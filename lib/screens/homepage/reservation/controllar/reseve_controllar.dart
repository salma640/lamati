import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../../../consts/style.dart';

class redetail {
  static timeanddate({required Color color}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("ص 00 : 09", style: TextStyle(fontSize: 11, color: color)),
      Icon(FontAwesomeIcons.stopwatch, size: 15, color: color),
      Text("\t20 - 8 - 2021", style: TextStyle(fontSize: 11, color: color)),
      Icon(Icons.calendar_month, size: 15, color: color),
    ]);
  }

  static BoxDecoration boxDecoration = BoxDecoration(boxShadow: [
    BoxShadow(color: Color.fromARGB(255, 145, 178, 245), offset: Offset(1, 1))
  ], borderRadius: BorderRadius.circular(12), color: Colors.white);

  static nameandcolor({required String text, required Color backcolor}) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(backgroundColor: backcolor, radius: 8),
        Text(text, style: TextStyle(fontSize: 16, color: StyleConst.logocolor)),
      ]),
    );
  }

  static appbar() {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              child: Text('الحجوزات', style: StyleConst.blueTextStylelogo))
        ],
        bottom: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            labelColor: StyleConst.logocolor,
            unselectedLabelColor: Colors.grey[700],
            indicatorWeight: 3,
            indicatorColor: StyleConst.logocolor,
            tabs: [
              Tab(
                  child: Text('السابقة',
                      style: GoogleFonts.tajawal(
                          fontSize: 22, fontWeight: FontWeight.w700))),
              Tab(
                  child: Text('الحالية',
                      style: GoogleFonts.tajawal(
                          fontSize: 22, fontWeight: FontWeight.w700))),
            ]));
  }

  static screennow() {
    return Container(
        //color: Color.fromARGB(255, 74, 161, 232),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('asset/icons/forbidden 1.png'),
      StyleConst.sizeheight10,
      Text('عفوا لا يوجد حجوزات حالية', style: StyleConst.blacksmalltext)
    ]));
  }

  static alertdetaildailog({required String name}) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Image.asset('asset/image/blue_car.png', width: 150, height: 145),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              timeanddate(color: Colors.black),
              Text(' نوع المركبة :$name', textDirection: TextDirection.rtl),
              Text('موديل المركبة : 2021 ', textDirection: TextDirection.rtl),
              Row(children: [
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff0b3fa8))),
                Text('  : لون المركبة ')
              ])
            ],
          ),
        ],
      ),
    );
  }

  static TextStyle textStyles = GoogleFonts.tajawal(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: StyleConst.blacklogocol);

  static AlertDialogdetaillist() {
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 200,
      width: 350,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        form.textdetail(
            firsttext: 'الخدمات',
            value: 'المبلغ',
            textStyle: GoogleFonts.tajawal(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: StyleConst.logocolor)),
        form.textdetail(
            firsttext: 'غسيل عام', value: 'رس\t 50', textStyle: textStyles),
        form.textdetail(
            firsttext: 'عطر فواح', value: 'رس\t 10', textStyle: textStyles),
        form.textdetail(
            firsttext: 'ضريبة القيمة المضافة',
            value: 'رس\t 5',
            textStyle: textStyles),
        form.textdetail(
            firsttext: 'المبلغ الاجمالي',
            value: 'رس\t 65',
            textStyle: textStyles),
      ]),
    );
  }
}
