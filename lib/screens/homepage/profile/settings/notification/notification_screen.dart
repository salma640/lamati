import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../contraller/profile_contraller.dart';

class Notificationss extends StatefulWidget {
  const Notificationss({super.key});

  @override
  State<Notificationss> createState() => _NotificationssState();
}

class _NotificationssState extends State<Notificationss> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileController.appbar(text: "الاشعارات"),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.only(top: 50.0),
            width: 350,
            height: 700,
            child: ListView.separated(
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: 350,
                    height: 2,
                    color: Colors.grey[500]);
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    StyleConst.sizeheight10,
                    Text(
                      'اشعار 1',
                      style: GoogleFonts.tajawal(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[600]),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                    StyleConst.sizeheight10,
                    Text(
                      'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"',
                      style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
