class AyurmanaClinicalIntake 
{
  String patientName='';
  int age=0;
  String gender='';
  String contactNo='';
  String email='';
  String policyName='';
  DateTime expiryDate=DateTime.now();
  double? limit=0;
  double? coPay=0;
  bool consultation=false;
  bool medicine=false;
  bool treatment=false;
  bool pregnant=false;
  bool medication=false;
  int painscale=0;
  String patientSign='';
  String clinicalIntakeGUID='';
  String patDocNo='';
  String patDocType=''; 
  Map<String, dynamic> toJson() {
    return {
      'PatientName': patientName,
      'Age': age,
      'Gender': gender,
      'ContactNo': contactNo,
      'Email': email,
      'PolicyName': policyName,
      'ExpiryDate': expiryDate.toIso8601String(), // Convert DateTime to ISO8601 format
      'Limit': limit,
      'CoPay': coPay,
      'Consultation': consultation,
      'Medicine': medicine,
      'Treatment': treatment,
      'Pregnant': pregnant,
      'Medication': medication,
      'Painscale': painscale,
      'PatientSign': patientSign,
      'ClinicalIntakeGUID': clinicalIntakeGUID,
      'Pat_DocNo': patDocNo,
      'Pat_DocType': patDocType,
    };
  }
}
