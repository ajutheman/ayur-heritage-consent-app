import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

class BoitaCONSENTFROM extends StatelessWidget {
  const BoitaCONSENTFROM({Key? key, required this.consentRequests}) : super(key: key);

  final List<ConsentRequestModel> consentRequests;

  @override
  Widget build(BuildContext context) {
    SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white,
    );

    late ConsentRequestModel selectedConsentRequest = consentRequests.first;

    return Scaffold(
      appBar: AppBar(title: const Text('Botox Consent Form')),
      body: ListView(
        children: [
          DropdownButton<ConsentRequestModel>(
            value: selectedConsentRequest,
            items: consentRequests.map((consentRequest) {
              return DropdownMenuItem<ConsentRequestModel>(
                value: consentRequest,
                child: Text(consentRequest.patientName),
              );
            }).toList(),
            onChanged: (newValue) {
              // No state to update in a StatelessWidget
              selectedConsentRequest = newValue!;
            },
          ),
          ConsentForm(consentRequest: selectedConsentRequest, controller: controller),
          ElevatedButton(
            onPressed: () {
              // Handle submit action
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class ConsentForm extends StatelessWidget {
  const ConsentForm({
    Key? key,
    required this.consentRequest,
    required this.controller,
  }) : super(key: key);

  final ConsentRequestModel consentRequest;
  final SignatureController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputWidget.TitleWidget("Botox Consent Form"),
        InputWidget.ParagraphWidget("I ${consentRequest.patientName}, consent to Botulinum Toxin Injection."),
        // Add other widgets as per your requirements
        InputWidget.SubTitle("Patient Signature"),
        InputWidget.SignatureWidget(controller, consentRequest, context),
        InputWidget.SubTitle("Doctor Signature"),
        InputWidget.SignatureWidget(controller, consentRequest, context),
        InputWidget.SubTitle("Parent or Guardian (if patient is a minor)"),
        InputWidget.SignatureWidget(controller, consentRequest, context),
        InputWidget.SubTitle("Dated : "),
        InputWidget.SubTitle("Time"),
      ],
    );
  }
}
