import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class ConsentformforMedicalCareEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  ConsentformforMedicalCareEnglish({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text('Consent form for Medical Care English')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget("Consent form for Medical Care English"),
              InputWidget.ParagraphWidget(
                  "I, ${consentReq.patientName},  am willing to receive medical care and medical services in FirstHealth. And I agreeto follow the treatment plan that is advised by the medical team in the centre after discussing it."),
              InputWidget.ParagraphWidget(
                  "In case I want to do a treatment or a procedure, I understand that the doctor will explain to me the stepsand the consequences of the treatment and the time required for it. And thereafter, I confirm that I willfollow the instructions given by the Doctor."),
              InputWidget.ParagraphWidget(
                  "I understand that in case of doing certain cosmetic procedures, I will be asked to sign specific treatmentguidelines papers related to this procedure."),
              InputWidget.ParagraphWidget(
                  "I confirm that I will pay the fees of the consultation and procedures ."),
              InputWidget.ParagraphWidget(
                  "• I know that the medical care services provided in FirstHealth is based on long experience and latesttechnologies in the medical services available in the centre."),
              InputWidget.ParagraphWidget("Financial responsibilities:"),
              InputWidget.ParagraphWidget(
                  "I fully understand that I am responsible for paying the full amount for my sessions, treatments. Iunderstand that FirstHealth follows a strict No Refund policy."),
              InputWidget.ParagraphWidget(
                  "I  ${consentReq.patientName},  am a competent consenting adult of at least 18 years of age (or my parent or legalguardian is giving consent on my behalf), and further:"),
              InputWidget.ParagraphWidget(
                  "·         Must notify the clinician if my medical history changes prior to subsequent treatments"),
              InputWidget.ParagraphWidget(
                  "·         There are no refunds for services rendered or/and after 6 months from purchase and not used."),
              InputWidget.ParagraphWidget(
                  "·         My signature below constitutes my acknowledgment and understanding of all this information"),
              InputWidget.ParagraphWidget(
                  "I hereby authorize and direct FirstHealth doctors and nurses to perform consultations and treatment at all sessionsattending by me , during the period of time required depending on my condition/progress."),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle("Doctor :${consentReq.doctorName}"),
              InputWidget.SubTitle("Doctor Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Parent :${consentReq.patientName}"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle(
                  "Parent or Guardian (if patient is a minor)"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Dated : "),
              InputWidget.SubTitle("Time")
            ]),
          ),
        ));
  }
}
