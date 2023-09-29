import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../../../../consts/style.dart';
import '../../contraller/profile_contraller.dart';

class TermaAndConditions extends StatefulWidget {
  const TermaAndConditions({super.key});

  @override
  State<TermaAndConditions> createState() => _TermaAndConditionsState();
}

class _TermaAndConditionsState extends State<TermaAndConditions> {
  bool ss = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileController.appbar(text: "الشروط و الاحكام"),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.only(top: 90.0),
            width: 350,
            height: 620,
            child: Column(
              children: [
                Text(
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر\n\n'),
                Text(
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر\n\n'),
                Text(
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    'وع وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر\n\n'),
                Container(
                  height: 30,
                  //width: 320,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          side:
                              BorderSide(color: StyleConst.logocolor, width: 3),
                          value: ss,
                          onChanged: (val) {
                            setState(() {
                              ss = val!;
                            });
                          }),
                      Text(
                        'موافق علي الشروط و الاحكام',
                        style: GoogleFonts.tajawal(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: StyleConst.logocolor),
                        textDirection: TextDirection.rtl,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
