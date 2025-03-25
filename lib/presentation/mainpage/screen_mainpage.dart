import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/core/colors/colors.dart';
import 'package:medicoplusconsent/domain/model/AyurmanaClinicalIntake.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/domain/model/mriConsentResponse.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/Ayurmana/AyurmanaConsent.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bariumcosnent/bariumconsent.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:lottie/lottie.dart';
import 'package:medicoplusconsent/presentation/theames/MedButtonStyles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenMainPage extends StatelessWidget {
  late ConsentBloc _bloc;
  String deviceName = 'deviceName';
  ScreenMainPage({super.key, required this.deviceName});
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<ConsentBloc>(context);
    return StreamBuilder<ConsentRequestModel>(
        stream: _bloc.message,
        builder: (context, snapshot) {
        
          if (snapshot.hasData) {
            ConsentRequestModel consent = snapshot.data as ConsentRequestModel;
            if (consent.consentDocNo == '025') 
            
            {
              return AyurmanaConsent(consentRequest: consent);
            }
            // if else (consent.consentDocNo == '026')
            // {

            // } ;
            else {
              return Container(); //patientSign
            }
          } else {
            return Scaffold(
                backgroundColor: backGroundColor,
                body: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     // Image.asset('assets/ayurmanaLogo.png'),
                      InputWidget.TitleWidget("Consent form"),
                      InputWidget.ParagraphWidget(
                          ""),
                      InputWidget.TitleWidget(""),
                      Lottie.asset(
                        'assets/Ayurmana.json',
                        width: 300,
                        height: 200,
                      ),
                      InputWidget.ParagraphWidget(
                          "You may now request a consent form for your PC."),
                      ElevatedButton(
                          onPressed: () {                            
                           Navigator.push( context,
                           MaterialPageRoute(builder: (context) => BariumConsent()));
                      
                          },
                          style: MedButtonStyles.goButtonStyle,
                          child: const Text('Clinical Intake')),
                      InputWidget.FormLabel(deviceName.toString()),
                      InputWidget.ParagraphWidget("Powered By"),
                      Image.asset('assets/MedicoPlus.png',height: 100),
                    ],
                  ),
                ));
          }
        });
  }
}
