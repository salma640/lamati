import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import '../contraller/profile_contraller.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileController.appbar(text: "المساعدة"),
          body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.only(top: 110.0),
              width: 350,
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  StyleConst.sizeheight10,
                  Text(
                    'عن لمعتي',
                    style: GoogleFonts.tajawal(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: StyleConst.logocolor),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  StyleConst.sizeheight10,
                  Text(
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر\n\n',
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  StyleConst.sizeheight20,
                  Text(
                    'كيف تستخدم لمعتي',
                    style: GoogleFonts.tajawal(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: StyleConst.logocolor),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  StyleConst.sizeheight10,
                  Text(
                    'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\n\n وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر\n\n',
                    style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ],
              )),
        )
      ],
    );
  }
}
