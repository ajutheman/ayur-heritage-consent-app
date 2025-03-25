import 'dart:convert';
import 'package:medicoplusconsent/domain/api/apiClient.dart';
import 'package:medicoplusconsent/domain/model/AyurmanaClinicalIntake.dart';
import 'package:medicoplusconsent/domain/model/MamogramConsentModel.dart';

class ClinicalIntakeAPI{
  static Future<String> submitConsent(AyurmanaClinicalIntake consent) async {
    try {
 
      final body = jsonEncode(consent.toJson());
      ApiClient client = ApiClient();        
      var result =await client.submitConsent("api/ClinicalIntake", body);
      return "Success";
    } 
    catch (e)
    {
      return "Error";
    }   
    }
}
