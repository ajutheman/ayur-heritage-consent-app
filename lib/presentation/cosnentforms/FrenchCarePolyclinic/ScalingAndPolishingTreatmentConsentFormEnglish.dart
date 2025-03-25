import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class ScalingAndPolishingTreatmentConsentFormEnglish extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  ScalingAndPolishingTreatmentConsentFormEnglish(
      {super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('SCALING AND POLISHING TREATMENT CONSENT FORM')),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              InputWidget.TitleWidget(
                  "SCALING AND POLISHING TREATMENT CONSENT FORM"),
              InputWidget.ParagraphWidget(
                  "Dentist Name : ${consentReq.doctorName}"),
              InputWidget.ParagraphWidget(
                  "Name of Patient: ${consentReq.patientName}"),
              InputWidget.ParagraphWidget("File No :${consentReq.MrNo}"),
              InputWidget.ParagraphWidget("Age:${consentReq.age}"),
              InputWidget.ParagraphWidget("Date:${consentReq.Date}"),
              InputWidget.SubTitle(
                  "Please read and sign at the bottom of the form:"),
              InputWidget.SubTitle("DESCRIPTION AND BENEFIT OF THE PROCEDURE"),
              InputWidget.ParagraphWidget(
                  "Scaling refers to the removal of plaque and calculus (the white or yellow hard deposits that accumulate onteeth and are not removable by routine brushing). Polishing refers to the removal of stains and very smallparticles of calculus. This routine procedure is essential in maintain the health of gums and teeth."),
              InputWidget.SubTitle("RISKS, COMPLICATIONS AND DISCOMFORTS"),
              InputWidget.ParagraphWidget(
                  "I understand that there are risks and complications associated with the administration of medications,including anesthesia, and performance of the recommended treatment. These potential risks andcomplications, include, but are not limited to, the following:"),
              InputWidget.ParagraphWidget(
                  "1. Drug reactions and side effects."),
              InputWidget.ParagraphWidget(
                  " 2. Increased spacing between teeth due to removal of hard deposits."),
              InputWidget.ParagraphWidget(
                  "3. Revealing of tooth mobility following the removal of hard calculus deposits that may have supportedmobile teeth."),
              InputWidget.ParagraphWidget("  4. Revealing of recessed gums."),
              InputWidget.ParagraphWidget(
                  " 5. Varying lengths and degrees of sensitivity to temperature and pressure."),
              InputWidget.ParagraphWidget(
                  " 6. Post-treatment bleeding, swelling and/or restricted mouth opening for several days or weeks."),
              InputWidget.ParagraphWidget(
                  "7. As a result of the injection or use of anesthesia, there may be swelling, jaw muscle tenderness or evenresultant numbness of the tongue, lips, teeth, jaws and/or facial tissues, which is typically temporary, butin rare instances, may be permanent."),
              InputWidget.SubTitle("CHANGES IN TREATMENT PLAN"),
              InputWidget.ParagraphWidget(
                  "During the course of treatment, procedures may need to be added, expanded, or changed if the dentistfinds conditions that were not identified during examination and first observed during the course oftreatment. Permission is hereby given to perform any additional or expanded dental services that thedentist determines to be necessary. Further, at the dentist’s discretion, I may be referred to aspecialist for further treatment, the cost of which may be my responsibility."),
              InputWidget.SubTitle(
                  "ALTERNATIVES TO CLINICAL PROCEDURE OR TREATMENT"),
              InputWidget.ParagraphWidget(
                  "I understand that alternative treatment is available and includes, but is not limited to, no treatment,temporary treatment, or removal of tooth. With no treatment, I can expect my condition to worsen. Withremoval of my teeth, I can expect other problems such as tooth drifting, supra-eruption, and traumatic biteto develop."),
              InputWidget.SubTitle("RIGHT TO REFUSE TREATMENT"),
              InputWidget.ParagraphWidget(
                  "I understand that I have the right to refuse all or a portion of the proposed treatment plan recommendedby the dentist after being made aware of alternate treatment options and the likely consequences ofdeclining treatment."),
              InputWidget.SubTitle("FINANCIAL IMPLICATIONS"),
              InputWidget.ParagraphWidget(
                  "The fees for this service have been explained to me and are satisfactory. I am aware of allprocedures/treatments provided that are not covered by insurance or which may require full payment orco-payment."),
              InputWidget.SubTitle("CONFIDENTIALITY"),
              InputWidget.ParagraphWidget(
                  "I understand that all personal and medical information shared with the clinical team will be keptconfidential and shall only be used for the purposes for which they were given. I consent to the use ofinformation in the form of radiographs, photos or videos for other purposes, such as on social mediaplatforms, on the basis that I cannot be identified from the information released."),
              InputWidget.SubTitle(
                  "I certify that I have read the contents of this form. I understand the potential risks,complications and side effects with any dental treatment or procedure and have decided toproceed with this procedure. I consent to this treatment, and I assume my responsibility to follow any post-operative instructions given to me and accept all the expenses incurred in the treatment above."),
            ]),
        bottomNavigationBar: SizedBox(
          height: 245,
          child: Container(
            color: Colors.white,
            child: ListView(children: [
              InputWidget.SubTitle(" ${consentReq.patientName},"),
              InputWidget.SubTitle(
                  "Parent or Guardian (if patient is a minor)"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Patient Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle(" ${consentReq.doctorName},"),
              InputWidget.SubTitle("Doctor Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Witness: Signature"),
              InputWidget.SignatureWidget(controller, consentReq, context),
              InputWidget.SubTitle("Dated : "),
              InputWidget.SubTitle("Time")
            ]),
          ),
        ));
  }
}
