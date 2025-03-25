import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/presentation/kaizenwidgets/inputwidgets.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class GeneralDentalTreatmentConsentFormArabic extends StatelessWidget {
  SignatureController controller = SignatureController(
      penColor: Colors.black,
      penStrokeWidth: 3,
      exportBackgroundColor: Colors.white);

  late ConsentRequestModel consentReq;

  GeneralDentalTreatmentConsentFormArabic(
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
                  'نموذج الموافقة العام على علاج الأسنان باللغة العربية')),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  InputWidget.TitleWidget(
                      "نموذج الموافقة العام على علاج الأسنان باللغة العربية "),
                  InputWidget.ParagraphWidget(
                      "    طبیب الأسنان: ${consentReq.doctorName}"),
                  InputWidget.ParagraphWidget(
                      "اسم المریض :${consentReq.patientName}"),
                  InputWidget.ParagraphWidget("التاریخ:${consentReq.MrNo}"),
                  InputWidget.ParagraphWidget(" السن:${consentReq.age}"),
                  InputWidget.ParagraphWidget(" رقم الملف:${consentReq.Date}"),
                  InputWidget.ParagraphWidget(" ${consentReq.Date}:النوع :"),
                  InputWidget.TitleWidget("ه والتوقیع النموذج قراءة ي"),
                  InputWidget.TitleWidget("1- الأشعة السینیة"),
                  InputWidget.TitleWidget(" 2 العقاقیر والعلاج"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن عقاقیر المضاد الحیوي والمسكنات والعقاقیر الأخرى قد تسبب حساسیة واحمرار وتورم في الأنسجة،وقد ينتج وجع أو حكة أو قي و/أو صدمة تأقي (حساسیة مفرطة)."),
                  InputWidget.ParagraphWidget("3-التغییرات في خطة العلاج"),
                  InputWidget.ParagraphWidget(
                      "أفھم أنه قد يكون من الضروري خلال الإجراء العلاجي تغییر أو إضافة إجراء وفقا لما يتضح في الحالةالمرضیة عند العمل على الأسنان والتي لم يتم اكتشافھا خلال الفحص، والأكثر شیوعا ھو علاج قناة الجذر بعدإجراء التقوية الروتیني. أمنح موافقتي إلى طبیب الأسنان لإجراء أي جمیع التغییرات و الإضافات المطلوبة."),
                  InputWidget.ParagraphWidget("4-إزالة الأسنان"),
                  InputWidget.ParagraphWidget(
                      "تم شرح البدائل التي قد يتم إجرانھا عوضا عن إزالة السن (علاج قناة الجذر والتیجان وجراحة دعاماتالأسنان)وأفوض طبیب الأسنان لإزالة السن التالي. أفھم المخاطر المتضمنة في عملیة إزالة الأسنان وأن بعضمنھا يكون مؤلما و يتبعه تورم أو انتشار للعدوى وفقد الشعور في منطقة السن والشفاه والنسیج المحیط والذيقد يستمر لفترة غیر محددة (أيام أو شھور) أو تكسر في القك."),
                  InputWidget.ParagraphWidget(
                      "5- تیجان والأجزاء الثابتة والمتحركة"),
                  InputWidget.ParagraphWidget(
                      "أفھم أنه في بعض الأحیان قد لا يكون ممكنا مطابقة لون الأسنان الطبیعیة بدقة مع الأسنان الصناعیة، وأفھمأيضا أني قد يتم تركیب تیجان مؤقتة والتي تنزع بسھولة وعلي توخي الحرص لضمان المحافظة علیھا حتىتركیب التیجان الدائمة. أفھم أن الفرصة الأخیرة لإجراء تغییرات في التاج الجديد أو الجزء الثابت أو المتحرك(بما في ذلك الشكل والملائمة والحجم واللون) يكون قبل وضع مادة التثبیت."),
                  InputWidget.ParagraphWidget(
                      "6- علاج التھاب لب الأسنان (قناة الجذر)"),
                  InputWidget.ParagraphWidget(
                      "أدرك أنه لا يوجد ضمان بأن إجراء قناة الجذر سیحمي السن وأنه قد تحدث مضاعفات من العلاج، وأنه قد يتمتثبیت بنود معدنیة في السن أو يتم تمديدھا من خلال الجذر والتي قد لا تؤثر بالضرورة على نجاح العلاج. أفھمأنه قد يتطلب إجراء جراحي إضافي بعد العلاج بقناة الجذر (قطع الجذر)."),
                  InputWidget.ParagraphWidget("7- لحشوات"),
                  InputWidget.ParagraphWidget(
                      "أفھم أنه ينبغي توخي الحذر في عملیة المضغ على الحشوات خلال الساعة الأربعة والعشرين الأولى لتجنبکسرھا، كما أفھم أنه قد يتطلب إدخال حشوة أكثر تكلفة والتي تم تشخیصھا لي بسبب التسويس الإضافیة. أفھمأني سأشعر بحساسیة كبیرة بعد تثبیت الحشو الجديد."),
                  InputWidget.ParagraphWidget(
                      "8- أطقم الأسنان الكاملة أو الجزئیة"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن تركیب الأسنان يكون صعبا وأنه ينتج قرح وصعوبة في النطق والأكل. أفھم أن التركیباتالفورية )تركیب الأسنان بعد الخلع مباشرة) قد تكون مؤلمة، وقد تتطلب تركیب الأسنان الفوري تعديلاتو عملیات تبطین متعددة، وقد يتطلب إجراء تبطین دائم فیما بعد وھو غیر متضمن في رسوم الطقم. أفھم أنيمسؤولا عن العودة لاستلام طقم الأسنان، وأن الإخفاق في الالتزام بموعدي قد يترتب علیه تركیبات أسنان غیرثابتة بشكل قوي. أدرك أن طقم الأسنان الكلي أو الجزئي ھو صناعي من البلاستیك أو المعدن و/أو البورسلین.تم شرح مشاكل ھذه الإجراءات لي، بما في ذلك فقد الأسنان أو تقرحھا أو تكسرھا."),
                  InputWidget.ParagraphWidget("9- زراعة الأسنان"),
                  InputWidget.ParagraphWidget(
                      " أفھم أن جراحة زرع الأسنان قد تكون ممكنة وتحقق معدل نجاح كبیر، ولكن لا تضمن النجاح في مثل ھذاالنوع من العلاج. قد يكون العلاج العادي بالبديل الثابت أو البديل الملصق (المتحرك) ملائمة لحالتي.بخصوصضرورة أفھم أنه يجب إجراء فحوصات مرتین في العام وأشعة خلال ثلاثة أعوام بعد إجراءالزراعة و عن الفحوصات السنوية فیما بعد. في حالة فشل الزراعة، يتم إزالة السن المزروع مجانا۔"),
                  InputWidget.ParagraphWidget(
                      "  10- إزالة القلح وتخطیط الجذور وتلمیع الأسنان:"),
                  InputWidget.ParagraphWidget(
                      "يتم إجراء إزالة القلح وتخطیط الجذور لإزالة بقايا البكتريا والقلح من أسطح الجذور وجیوب اللثة حول الأسنانقد يتطلب ھذا الإجراء استخدام مخدر محلي، وقد ينتج آثار جانبیة عن ھذا الإجراء والتي تتضمن الحساسیة إلىالمأكولات الباردة / الساخنة وتقرح أنسجة اللثة."),
                  InputWidget.ParagraphWidget("11 - الجراحة دعامات السن:"),
                  InputWidget.ParagraphWidget(
                      "أفھم أن المعالجة لدعامات السن قد لا تكون ناجحة في المحافظة على عمل السن أو مظھره، لاختلاف كلمريضعن الأخر، وعدم حدوث نجاح طويل المدى. لا توجد طريقة من شأنھا توقع أو تقییم كیفیة تداوي اللثةوالعظم . أفھم أنه قد توجد حاجة إلى إجراء علاج إضافي إذا كانت النتائج الأولیة غیر مقبولة. بالإضافة إلىھذا، فإن نجاح إجراءات معالجة دعامات السن قد تتاثر بالظروف الصحیة والنظام الغذائي ومشاكل التغذية"),
                  InputWidget.ParagraphWidget(
                      "والتدخین وتعاطي الكحولیات وتشنج الأسنان وتجلیخھا والنظام الصحي غیر الملائم لطب الأسنان والعقاقیر\التي قد تؤخذ."),
                  InputWidget.ParagraphWidget("12- معالجة الأسنان بالفلور:"),
                  InputWidget.ParagraphWidget(
                      "يعد الفلورمادة فعالة في منع علامات تأكل السن والمحافظة علیه، وتشكل مادة الفلورايد مادة بناء في السنوتجعله قويا مما يجعله مقاوما لھجمات الأحماض. يعد وضع مادة الفلورايد جزء مھم من البرنامج الوقائي لديناللأطفال، وھو الأكثر فعالیة عند وضعه بعد تنظیف الأسنان وإزالة جمیع طبقات الجراثیم المتراكمة على سطحالسن."),
                  InputWidget.ParagraphWidget(
                      "أشھد أنا الموقع أدناه بأنه تم إبلاغي بالكامل بواسطة طبیب الأسنان بخصوص إجراءات الأشعة السینیة والعقاقیر والعلاوخطةعلاج الأسنان،وأنني مؤھل طبیا للخضوع إلى إجراءات علاج الأسنان، وبخصوص السعر وأنه قد تو. مضاعفات، وأنه كان لدي فرصه قراءة ھذا النموذج وطرح الأسئلة بخصوصه. أقر أيضا أنه تم الرد على أسئلتي وإنني أوافق على العلاج المقترح."),
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
                    "توقیع الشاھد:   ${consentReq.patientName},"),
                InputWidget.SignatureWidget(controller, consentReq, context,
                    isArabic: true),
                InputWidget.TitleWidget("توقیع الطبیب:"),
              ]),
            ),
          )),
    );
  }
}
