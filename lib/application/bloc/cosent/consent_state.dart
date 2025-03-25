
part of 'consent_bloc.dart';

abstract class ConsentState {}

class ConsentInitial extends ConsentState {}

class ConsentRegistered extends ConsentState 
{
  late String deviceName='No device';
  ConsentRegistered({required this.deviceName});
}

class NoInternetSate extends ConsentState{}

class ConsentRegister extends ConsentState {

  ConsentRegister();

}

class ClinicalIntakeState extends ConsentInitial
{
  final String mode;
  ClinicalIntakeState({required this.mode}); 
}

class MammoConsentState extends ConsentState 
{
   final MamogramConsentModel mamogramConsentModel;
   MammoConsentState({required this.mamogramConsentModel});
}
