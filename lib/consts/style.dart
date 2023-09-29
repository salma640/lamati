import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleConst {
  static const logocolor = Color(0xff0B3FA8);
  static const whitelogocol = Colors.white;
  static const blacklogocol = Colors.black;
  static const colortextfield = Color(0xffE1E6F1);
  static const colorborder = Color(0xffC5D4F5);
  static const widthbuttonlogo = 370.0;
  static const heightfeild = 60.0;
  static const sizeheight10 = SizedBox(height: 10.0);
  static const sizeheight20 = SizedBox(height: 20.0);
  //
  static TextStyle whitesmalltext = GoogleFonts.tajawal(
      fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500);
  //
  static TextStyle blueesmalltext = GoogleFonts.tajawal(
      fontSize: 24, color: Color(0xff0B3FA8), fontWeight: FontWeight.w500);
  static TextStyle blacksmalltext = GoogleFonts.tajawal(
      fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500);
  // white boxdecoration
  static BoxDecoration whiteboxdelogo = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

  /// blue box decoration for button
  static BoxDecoration blueboxdelogo = BoxDecoration(
    color: Color(0xff0B3FA8),
    borderRadius: BorderRadius.circular(10),
  );

  // blue textstyle for text
  static TextStyle blueTextStylelogo = GoogleFonts.tajawal(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: StyleConst.logocolor,
  );

  //white textstyle for text
  static TextStyle whiteTextStylelogo = GoogleFonts.tajawal(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: StyleConst.whitelogocol,
  );
  static Container container = Container(
    width: 89,
    height: 60,
    decoration: BoxDecoration(
        color: StyleConst.colortextfield,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: StyleConst.colorborder, width: 3)),
  );


  static textformlogo({required String text, required bool obscureText}) {
    return Column(
      children: [
        Row(textDirection: TextDirection.rtl, children: [
          Container(
              margin: const EdgeInsets.only(right: 18.0),
              child: Text(text,
                  style: GoogleFonts.tajawal(
                      fontSize: 14, fontWeight: FontWeight.w700)))
        ]),
        Container(
          margin: const EdgeInsets.only(top: 3.0),
          height: StyleConst.heightfeild,
          width: StyleConst.widthbuttonlogo,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
                color: StyleConst.colorborder,
                style: BorderStyle.solid,
                width: 3),
            color: StyleConst.colortextfield,
          ),
          child: TextFormField(
            obscureText: obscureText,
            textDirection: TextDirection.rtl,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }

  static inibar() {
    return SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }

  static textoverfield({required String text, required double fonsize}) {
    return Row(textDirection: TextDirection.rtl, children: [
      Container(
          margin: const EdgeInsets.only(right: 18.0, bottom: 15),
          child: Text(text,
              style: GoogleFonts.tajawal(
                  fontSize: fonsize, fontWeight: FontWeight.w700)))
    ]);
  }
}
