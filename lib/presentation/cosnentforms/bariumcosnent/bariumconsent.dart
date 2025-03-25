import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicoplusconsent/domain/api/clinicalIntakeApi.dart';
import 'package:medicoplusconsent/domain/model/AyurmanaClinicalIntake.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/controls/MedControls.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart' show SignatureController;

class BariumConsent extends StatefulWidget {
  const BariumConsent({Key? key}) : super(key: key);

  @override
  _BariumConsentState createState() => _BariumConsentState();
}

class _BariumConsentState extends State<BariumConsent> {
  late ConsentRequestModel consentReq;
  SignatureController controller = SignatureController(
    penColor: Color.fromARGB(255, 0, 71, 24),
    penStrokeWidth: 3,
    exportBackgroundColor: Colors.white,
  );

  late AyurmanaClinicalIntake clinicalIntake;

  @override
  void initState() {
    super.initState();
    clinicalIntake = AyurmanaClinicalIntake();
    clinicalIntake.gender = 'Select';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MedControls.extraLargelabel("Clinical Intake")),
      body:  ListView(
        children: [        
          MedControls.sectionTitle("Patient Info"),
           Padding(
            padding: const EdgeInsets.all(4),
            child: MedControls.textRow('PatientName', ((val) {
              clinicalIntake.patientName=val.toString();
            })),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InputWidget.QuestionText("Age"),
                ),
                Expanded(
                  flex: 1,
                  child: MedControls.textInputControl((value) {
                    clinicalIntake.age = int.parse(value.toString());
                  },inputType: TextInputType.number),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: InputWidget.QuestionText("Gender"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: DropdownButton<String>(
                    style:  GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                    value: clinicalIntake.gender ?? 'Select',
                    onChanged: (String? newValue) {
                      setState(() {
                        clinicalIntake.gender = newValue!;
                      });
                    },
                    items: <String>[
                      'Select',
                      'Male',
                      'Female',
                      'Not rather to say',
                      'Other'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          MedControls.sectionTitle("Contact Info"),
          MedControls.textRow('Contatct No', ((val) {
            clinicalIntake.contactNo=val.toString();
          }),inputType: TextInputType.phone),
          SizedBox(height: 10),
          MedControls.textRow('Email', ((val) {
            clinicalIntake.email=val.toString();
          }),inputType: TextInputType.emailAddress),
          const SizedBox(height: 20),
          MedControls.sectionTitle("Insurance Info"),
          MedControls.textRow('Policy Name', ((val) {
            clinicalIntake.policyName=val.toString();
          })),
          const SizedBox(height: 5),
          Row(
            children: [
              Expanded(flex: 1, child: InputWidget.QuestionText("Expiry Date")),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: askDate(
                          labelText: 'Policy Date',
                          onChanged: (value) {
                            clinicalIntake.expiryDate=DateTime.parse(value) ;
                          }),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,0),
                        child: askNumber(
                            labelText: 'Limit',
                            onChanged: (value) {
                              clinicalIntake.limit = double.tryParse(value.toString());
                            }),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: askNumber(
                      labelText: 'Co-Pay',
                      onChanged: (value) {
                        clinicalIntake.coPay=double.tryParse(value.toString());
                      }))
            ],
          ),
          Row(
            children: [
              Expanded
              ( flex: 1,
                child: InputWidget.QuestionText("Applicable")),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    CheckBox(
                        value: clinicalIntake.consultation,
                        onChanged: (value) {
                          setState(() {
                            clinicalIntake.consultation = value;
                          });
                        },
                        label: "Consulation"),
                        CheckBox(
                    value: clinicalIntake.treatment,
                    onChanged: (value) {
                      setState(() {
                        clinicalIntake.treatment = value;
                      });
                    },
                    label: "Treatment"),
                    CheckBox(
                    value: clinicalIntake.medicine,
                    onChanged: (value) {
                      setState(() {
                        clinicalIntake.medicine = value;
                      });
                    },
                    label: "Medicine")              
                  ],
                ),
              ),
            ]
          ),
          const SizedBox(height: 20),
          MedControls.sectionTitle("Other"),
          askQuestion(
              isYes: clinicalIntake.pregnant,
              question: "Do you pregnant ?",
              onChanged: (val) {
                setState(() {
                  clinicalIntake.pregnant = bool.parse(val.toString());
                });
              }),
          askQuestion(
              isYes: clinicalIntake.medication,
              question: "Are you taking any medication ?",
              onChanged: (val) {
                setState(() {
                  clinicalIntake.medication = bool.parse(val.toString());
                });
              }),
          PainScaleRadio(
              groupValue: clinicalIntake.painscale,
              onChanged: (value) {
                setState(() {
                  clinicalIntake.painscale = value;
                });
              }),
          Image.asset('assets/painScale.png', height: 160),
          const SizedBox(height: 20),
          Center(
              child: MedControls.okCancelButtons(
                  context, "Submit", "Cancel", () => 
                  {

                    if(clinicalIntake.patientName == '' )
                    {
                      InputWidget.showCustomToast(context, "Please enter patient name")
                    }                   
                    else if(clinicalIntake.gender == 'Select' )
                    {
                      InputWidget.showCustomToast(context, "Please select gender")
                    }
                    else if(clinicalIntake.contactNo == '' )
                    {
                      InputWidget.showCustomToast(context, "Please enter contact no")
                    }
                    else
                    {
                       ClinicalIntakeAPI.submitConsent(clinicalIntake),
                      Navigator.pop(context)
                    }
                  }, () => 
                  {
                      
                      Navigator.pop(context)
                  }))         
        ],
      ),
    );
  }
}
