import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../consts/style.dart';

class form {
  static bool di = false;

  static Icon watch = Icon(FontAwesomeIcons.stopwatch,
      size: 25, color: Color.fromARGB(255, 104, 148, 242));
  static Icon calender = Icon(Icons.calendar_month,
      size: 25, color: Color.fromARGB(255, 104, 148, 242));
  static Icon dropdown = Icon(Icons.arrow_drop_down, size: 40);
  //
  static smalltextfield(
      {required String text,
      required String intext,
      required Icon icon,
      required bool diricon}) {
    return Column(children: [
      Row(textDirection: TextDirection.rtl, children: [
        Container(
            width: 175,
            child: Text(text,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.tajawal(
                    fontSize: 14, fontWeight: FontWeight.w700)))
      ]),
      Container(
          margin: const EdgeInsets.only(top: 3.0),
          height: 60,
          width: 175,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
                color: StyleConst.colorborder,
                style: BorderStyle.solid,
                width: 3),
          ),
          child: smallfeild(bool: diricon, intext1: intext, icon1: icon))
    ]);
  }

//
  static smallfeild(
      {required bool bool, required String intext1, required Icon icon1}) {
    return (bool == true)
        ? TextFormField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: GoogleFonts.tajawal(fontWeight: FontWeight.w700),
                hintText: intext1,
                hintTextDirection: TextDirection.rtl,
                prefixIcon: icon1))
        : TextFormField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: GoogleFonts.tajawal(fontWeight: FontWeight.w700),
                hintText: intext1,
                hintTextDirection: TextDirection.rtl,
                suffixIcon: icon1));
  }

//
  static colorcontainer() {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: x.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 50,
          width: 4,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(
            transformAlignment: Alignment.centerRight,
            height: 57,
            width: 80,
            decoration: BoxDecoration(
              color: x[index],
              borderRadius: BorderRadius.circular(12.0),
            ));
      },
    );
  }

//
  static Container_Car() {
    return MaterialButton(
      onPressed: () {},
      child: Card(
        shadowColor: StyleConst.colortextfield,
        elevation: 8,
        child: Container(
          width: 325,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(alignment: Alignment.topLeft, children: [
                Container(width: 60, height: 100),
                Icon(Icons.cancel, color: Colors.red, size: 30)
              ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text('نوع المركبة: فراري',
                        textDirection: TextDirection.rtl),
                    Text('موديل المركبة : 2021 ',
                        textDirection: TextDirection.rtl),
                    Row(children: [
                      Container(
                          width: 30,
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff0b3fa8))),
                      Text(': لون المركبة ')
                    ])
                  ]),
              Image.asset('asset/image/blue_car.png'),
            ],
          ),
        ),
      ),
    );
  }

  static service(
      {required String adrreess,
      required double coast,
      required String typeservice}) {
    return Column(
      children: [
        StyleConst.textoverfield(text: adrreess, fonsize: 25),
        Container(
          width: 360,
          height: 60,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 64, 63, 63),
                blurRadius: 1,
                offset: Offset(1, 1))
          ], borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundCheckBox(
                  onTap: (val) {}, borderColor: StyleConst.logocolor, size: 30),
              Text(' رس\t $coast ', style: StyleConst.blueesmalltext),
              Text(typeservice, style: StyleConst.blueesmalltext)
            ],
          ),
        ),
      ],
    );
  }

  static backgroundscreen() {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Image.asset('asset/image/Vector.png',
                    color: Color.fromARGB(255, 5, 81, 247), fit: BoxFit.fill))),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
            ))
      ],
    );
  }

  static coast() {
    return Container(
      width: 365,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('رس\t60', style: TextStyle(color: Colors.red)),
        Text('المبلغ الاجمالي', style: TextStyle(color: Colors.red)),
      ]),
    );
  }

  static addnote() {
    return Column(
      children: [
        Row(textDirection: TextDirection.rtl, children: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              width: 360,
              child: Text('اضافة ملاحظات',
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.tajawal(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.red)))
        ]),
        Container(
            width: 360,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(color: StyleConst.colorborder, width: 3),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white))
      ],
    );
  }

  static RowOfFeild() {
    return Container(
      width: StyleConst.widthbuttonlogo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          form.smalltextfield(
              text: ' الساعة', intext: '', diricon: false, icon: form.watch),
          const SizedBox(width: 6),
          form.smalltextfield(
              text: ' التاريخ', intext: '', diricon: false, icon: form.calender)
        ],
      ),
    );
  }

  static detailrow() {
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
              Row(children: [
                Text("ص 09 : 00",
                    style: TextStyle(fontSize: 14, color: Colors.red)),
                Icon(FontAwesomeIcons.stopwatch, size: 20, color: Colors.red),
                Text("20 - 8 - 2021",
                    style: TextStyle(fontSize: 14, color: Colors.red)),
                Icon(Icons.calendar_month, size: 20, color: Colors.red),
              ]),
              Text('نوع المركبة: فراري', textDirection: TextDirection.rtl),
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

  static textdetail(
      {required String firsttext,
      required String value,
      required TextStyle textStyle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        Text(firsttext, style: textStyle),
        Text(value, style: textStyle)
      ],
    );
  }

  static detaillist() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 280,
      width: 350,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        form.textdetail(
            firsttext: 'الخدمات',
            value: 'المبلغ',
            textStyle: StyleConst.blueesmalltext),
        form.textdetail(
            firsttext: 'غسيل عام',
            value: 'رس\t 50',
            textStyle: StyleConst.blacksmalltext),
        form.textdetail(
            firsttext: 'عطر فواح',
            value: 'رس\t 10',
            textStyle: StyleConst.blacksmalltext),
        form.textdetail(
            firsttext: 'ضريبة القيمة المضافة',
            value: 'رس\t 5',
            textStyle: StyleConst.blacksmalltext),
        form.textdetail(
            firsttext: 'المبلغ الاجمالي',
            value: 'رس\t 65',
            textStyle: StyleConst.blacksmalltext),
      ]),
    );
  }
}

List<Color> x = [
  Colors.grey,
  Color.fromARGB(255, 75, 74, 74),
  Colors.red,
  Colors.yellow,
  Colors.black,
  Color.fromARGB(255, 12, 21, 187),
];
