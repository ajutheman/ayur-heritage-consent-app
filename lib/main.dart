import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/NoInternetPage.dart';
import 'package:medicoplusconsent/appSettings.dart';
import 'package:medicoplusconsent/application/bloc/cosent/consent_bloc.dart';
import 'package:medicoplusconsent/presentation/cosnentforms/bariumcosnent/bariumconsent.dart';
import 'package:medicoplusconsent/presentation/mainpage/screen_mainpage.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



String svgCode = '';
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ConsentFormsApp());
}

class  ConsentFormsApp extends StatelessWidget {
  const ConsentFormsApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    String consentDeviceName='No Device yet';
     // Define your base color
    final Color baseColor = Color.fromARGB(255, 0, 79, 26);

    // Define lighter and darker shades
    final Color lighterShade = Color.fromARGB(255, 0, 110, 35);
    final Color darkerShade = Color.fromARGB(255, 0, 92, 24);

    // Create a custom theme
    final ThemeData theme = ThemeData(
      primaryColor: baseColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: darkerShade,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: lighterShade,
        textTheme: ButtonTextTheme.primary,
      ),
      // You can define other theme properties as needed
    );


    return BlocProvider(
        create: (context) => ConsentBloc(),
        child: MaterialApp(
            home: BlocProvider(
                create: (context) => ConsentBloc(),
                child: Scaffold(body: BlocBuilder<ConsentBloc, ConsentState>(
                  builder: (context, state) 
                  {
                    if (state is ConsentInitial) 
                    {
                      BlocProvider.of<ConsentBloc>(context).add(ConsentInitial());
                      return const Center(child: CircularProgressIndicator());
                    
                    } 
                    else if (state is ConsentRegister) 
                    {
                      return const appSettings();
                    } 
                    else if (state is NoInternetSate) 
                    {
                      return  NoInternetPage();
                    } 
                    else if (state is ClinicalIntakeState) 
                    {
                      return const BariumConsent();
                    } 
                    else 
                    {              
                      var _state = state as ConsentRegistered;
                      consentDeviceName=_state.deviceName;
                      return ScreenMainPage(deviceName:consentDeviceName);
                    }
                  },
                ))),
               theme: theme,
               routes: {'/consent': (context) => ScreenMainPage(deviceName: consentDeviceName)}));
        
               
  }
}
