class ConsentRequestModel {
  String doctorName = "";
  String patientName = "";
  String patDocNo = "";
  String consentDocNo = "";
  String doctorDocNo = "";
  String clinicName = "";
  String age = "";
  String MrNo = "";
  String Witness = "";
  String Date = "";
  ConsentRequestModel(
      {required this.doctorName,
      required this.patientName,
      required this.patDocNo,
      required this.consentDocNo,
      required this.clinicName,
      required this.age,
      required this.doctorDocNo,
      required this.MrNo});
}
