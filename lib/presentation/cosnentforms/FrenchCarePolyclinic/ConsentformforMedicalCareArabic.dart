import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class ConsentformforMedicalCareArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  ConsentformforMedicalCareArabic({super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
              title: const Text(
                  'موافقة عامة لإجراء علاج/علاجات بعیادة سنسايا لجراحة التجمیل وطب الأسنان')),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  InputWidget.TitleWidget(
                      "موافقة عامة لإجراء علاج/علاجات بعیادة سنسايا لجراحة التجمیل وطب الأسنان"),
                  InputWidget.ParagraphWidget(
                      " أنا الموقع أدناه، ${consentReq.patientName}_________ على استعداد لتلقي الرعاية الطبیة والخدمات الطبیة في عیلدة سنسايا لجراحة التجمیل وطب الأسنان. وأوافق على اتباع خطة العلاج التي ينصح بھا الفريق الطبي في المركز بعد مناقشتھا."),
                  InputWidget.ParagraphWidget(
                      "في حال كنت أرغب في إجراء علاج، أفھم أن الطبیب سیشرح لي خطوات ونتائج العلاج والوقت اللازم لذلك. •وبعد ذلك، أؤكد أنني سأتبع التعلیمات التي قدمھا الطبیب."),
                  InputWidget.ParagraphWidget(
                      "أفھم أنه في حالة القیام ببعض الإجراءات التجمیلیة، سیُطلب مني التوقیع على أوراق إرشادات علاجیة محددة •تتعلق بھذا الإجراء."),
                  InputWidget.ParagraphWidget(
                      "أؤكد أنني سأدفع رسوم الاستشارة والإجراءات إذا لم يتم تغطیتھا من قبل شركات التأمین."),
                  InputWidget.ParagraphWidget(
                      "أعلم أن خدمات الرعاية الطبیة المقدمة في جراحة التجمیل وطب الأسنان في عیادة سانسايا تستند إلى خبرة •طويلة وأحدث التقنیات في الخدمات الطبیة المتوفرة في المركز."),
                  InputWidget.ParagraphWidget("المسؤولیات المالیة:"),
                  InputWidget.ParagraphWidget(
                      "أفھم تمامًا أنني مسؤول عن دفع المبلغ الكامل لجلساتي وعلاجاتي. أفھم أن جراحة التجمیل وطب الأسنان في سانسیا تتبع سیاسة صارمة لعدم استرداد الأموال."),
                  InputWidget.ParagraphWidget(
                      "توقیعي أدناه يشكل إعتراف أنني شخص بالغ لايقل عمري عن 18 سنة (وفي حالة ان عمري اقل ن 18سنة والدي او الوصي القانوني علي سیوقع نیابة عني)."),
                  InputWidget.ParagraphWidget(
                      " تعلیمات ما قبل وبعد العلاج قد تم شرحھا"),
                  InputWidget.ParagraphWidget(
                      "   جمیع أسئلتي تم الإجابة علیھا"),
                  InputWidget.ParagraphWidget(
                      "إن تغیر تاريخي الطبي أكد أنني سوف أجدد معلوماتي قبل العلاج القادم"),
                  InputWidget.ParagraphWidget(
                      " أوافق على أخذ صور فوتورافیة للمنطقة المعالجة لملفي الطبي."),
                  InputWidget.ParagraphWidget(
                      " المبالغ المدفوعة للخدمات المقدمة والخدمات الغیر مستخدمة تنتھي صلاحیتھا بعد مرور عام على شرائھا وغیر قابلة للإسترداد"),
                  InputWidget.ParagraphWidget(
                      " قد قرات وفھمت المعلومات حول العلاج"),
                  InputWidget.ParagraphWidget(
                      "أنا بموجب ھذا الإتفاق أسمح لأطباء عیادة سنسایا والتمریض وفنیین اللیزر لأداء علاج على."),
                ]),
          ),
          bottomNavigationBar: SizedBox(
            height: 250,
            child: Container(
              color: Colors.white,
              child: ListView(children: [
                InputWidget.TitleWidget(
                    "توقیع المریض/ ولي الأمر:   ${consentReq.patientName},"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.TitleWidget("توقیع الطبیب:"),
                InputWidget.TitleWidget(
                    "توقیع الطبیب:${consentReq.doctorName}"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.TitleWidget("التاریخ:"),
                InputWidget.TitleWidget(
                    "توقیع الشاھد:   ${consentReq.Witness},"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.TitleWidget("توقیع الطبیب:"),
              ]),
            ),
          )),
    );
  }
}
