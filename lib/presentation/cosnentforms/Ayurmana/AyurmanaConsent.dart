import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class AyurmanaConsent extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  AyurmanaConsent({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title:const Text('Consent Form')),
      body: ListView(          
        scrollDirection:Axis.vertical,
        shrinkWrap: true, children: [
   
      InputWidget.TitleWidget("Consent Form"),
      InputWidget.SubTitle("File No : ${consentReq.patDocNo}"),
      InputWidget.SubTitle("Patient Name : ${consentReq.patientName}"),    
      InputWidget.ParagraphWidget("I request and authorize ${consentReq.doctorName}, Ayurvedic treatments to be done, as may be deemed necessary and appropriate by the physician or his/her designees participating in my care. I understand I will sign an informed consent if the treatment procedures are recommended. My signature below indicates my acknowledgement that:"),
      InputWidget.ParagraphWidget("1.The procedures had been explained to me satisfactorily."),
      InputWidget.ParagraphWidget("2.I have been given the opportunity to ask any questions I might have concerning the treatment, procedures and the risks associated with these."),
      InputWidget.ParagraphWidget("3.I have read and understood the advice given to me."),
        
        ]),
    bottomNavigationBar: SizedBox(
      height: 245,
      child: Container(
        color: Colors.white,
        child: ListView(
          children:[
           InputWidget.SubTitle("Patient Signature"),
           InputWidget.SignatureWidget(controller, consentReq, context)]    
        ),
      ),
    ));
  }
}

