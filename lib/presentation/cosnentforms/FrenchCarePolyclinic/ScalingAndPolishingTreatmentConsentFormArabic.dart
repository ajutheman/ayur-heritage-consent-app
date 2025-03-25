// ScalingAndPolishingTreatmentConsentFormEnglish

import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class ScalingAndPolishingTreatmentConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  ScalingAndPolishingTreatmentConsentFormArabic(
      {super.key, required consentRequest}) {
    consentReq = consentRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
              title: const Text(
                  'استمارة الموافقة على علاجات تنظیف و تلمیع الأسنان')),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  InputWidget.TitleWidget(
                      " استمارة الموافقة على علاجات تنظیف و تلمیع الأسنان"),
                  InputWidget.ParagraphWidget(
                      "    طبیب الأسنان: ${consentReq.doctorName}"),
                  InputWidget.ParagraphWidget(
                      "اسم المریض :${consentReq.patientName}"),
                  InputWidget.ParagraphWidget("التاریخ:${consentReq.MrNo}"),
                  InputWidget.ParagraphWidget(" السن:${consentReq.age}"),
                  // InputWidget.ParagraphWidget(" رقم الملف:${consentReq.Date}"),
                  InputWidget.ParagraphWidget(
                      "یرجى القراءة والتوقیع أسفل الاستمارة:"),
                  InputWidget.ParagraphWidget(
                    "وصف الإجراء وفائدتھ",
                  ),
                  InputWidget.ParagraphWidget(
                      "تنظیف و تلمیع الأسنان ھو إزالة البلاك و التكلس (الرواسب الصلبة البیضاء أو الصفراء التي تتراكم على الأسنان ولا یمكن إزالتھا بالفرشاة الروتینیة) و إزالة البقع وجزیئات القلح الصغیرة جًدا. ھذا الإجراء الروتیني ضروري للحفاظ على صحة اللثة والأسنان."),
                  InputWidget.ParagraphWidget("المخاطر والمضاعفات والمضایقات"),
                  InputWidget.ParagraphWidget(
                      "أدرك أن ھناك مخاطر ومضاعفات مرتبطة بإعطاء الأدویة ، بما في ذلك التخدیر وأداء العلاج الموصى بھ. تشمل ھذه المخاطر والمضاعفات المحتملة ، على سبیل المثال لا الحصر:"),
                  InputWidget.ParagraphWidget(
                      "التفاعلات الدوائیة والآثار الجانبیة."),
                  InputWidget.ParagraphWidget(
                      "ظھور تباعد أو فراغات بین الأسنان بسبب إزالة الرواسب الصلبة."),
                  InputWidget.ParagraphWidget(
                      "الكشف عن حركة الأسنان بعد إزالة الرواسب الصلبة التي قد تكون دعمت الأسنان المتحركة."),
                  InputWidget.ParagraphWidget(
                      "كشف انخفاض مستوى اللثة بعذ الالة التكلسات."),
                  InputWidget.ParagraphWidget("الحساسیة للحرارة والضغط."),
                  InputWidget.ParagraphWidget(
                      "نزیف ما بعد العلاج و/أو تورم اللثة او الفم و/ أو تقیید فتح الفم لعدة أیام أو أسابیع."),
                  InputWidget.ParagraphWidget(
                      " نتیجة للحقن أو استخدام التخدیر ، قد یكون ھناك تورم أو ألم في عضلات الفك أو حتى تنمیل ناتج عن ذلك في اللسان  والشفتین والأسنان والفكین و / أو أنسجة الوجھ ، وھو عادة ما یكون مؤقت ، ولكن في حالات نادرة ، قد یكون دائم."),
                  InputWidget.ParagraphWidget("التغییرات في خطة العلاج"),
                  InputWidget.ParagraphWidget(
                      "خلال مسار العلاج ، قد یلزم إضافة الإجراءات أو توسیعھا أو تغییرھا إذا وجد طبیب الأسنان ظروف لم یتم تحدیدھا أثناء الفحص وتمت ملاحظتھا لأول مرة أثناء العلاج. ُیمنح الإذن بموجب ھذا لأداء أي خدمات أسنان إضافیة أو موسعة یقرر طبیب الأسنان أنھا ضروریة. علاوة على ذلك ، ووفق لتقدیر طبیب الأسنان ، قد یتم إحالتي إلى أخصائي لمزید من العلاج ، وقد تكون"),
                  InputWidget.ParagraphWidget("بدائل للإجراء أو العلاج الطبي"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن العلاج البدیل متاح ویشمل ، على سبیل المثال لا الحصر ، عدم المتابعة ببدأ العلاج أو علاج مؤقت أو إزالة الأسنان. بدون علاج ، أتوقع أن تسوء حالتي. مع إزالة أسناني ، أتوقع حدوث مشاكل أخرى مثل انجراف الأسنان والعضة المؤلمة."),
                  InputWidget.ParagraphWidget("الحق في رفض العلاج"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن لدي الحق في رفض كل أو جزء من الإجراءات المقترحة أو خطة العلاج التي أوصى بھا طبیب الأسنان بعد إطلاعي على خیارات العلاج البدیلة والعواقب المحتملة لرفض العلاج."),
                  InputWidget.ParagraphWidget(
                      "طریقة الدفع و المسؤولیة المالیة"),
                  InputWidget.ParagraphWidget(
                      "تم شرح رسوم ھذا العلاج/ الإجراء لي وھي ُمرضیة. أنا على درایة بجمیع الإجراءات / العلاجات المقدمة التي لا یغطیھا التأمین أو التي قد تتطلب الدفع الكامل أو الدفع المشترك."),
                  InputWidget.ParagraphWidget("سریة و حفظ المعلومات"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن جمیع المعلومات الشخصیة والطبیة التي تمت مشاركتھا مع الفریق الطبي ستبقى سریة ولن ُستخدم إلا للأغراض التي تم تقدیمھا من أجلھا. أوافق على استخدام المعلومات في شكل صور إشاعیة أو صور أو مقاطع فیدیو لأغراض أخرى ، مثل منصات التواصل الاجتماعي ، على أساس أنھ لا یمكن التعرف ّ علي من المعلومات الصادرة."),
                  InputWidget.SubTitle(
                      "أقر بأنني قد قرأت محتویات ھذه الستمارة. أشھد أنني شاركت بصدق وبشكل كامل جمیع العلومات الشخصیة والطبیة الطلوبة مع الفریق الطبي. أفھم الخاطر والضاعفات والثار الجانبیة الحتملة لي علج أو إجراء للسنان و أوافق على ھذا العلج ، وأتحمل.مسؤولیتي في اتباع أي تعلیمات بعد الجراء العلجي تُعطى لي وأقبل جمیع النفقات اللزمة في العلج أعلھ"),
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
                InputWidget.TitleWidget("توقیع الطبیب: ${consentReq.Date}"),
              ]),
            ),
          )),
    );
  }
}
