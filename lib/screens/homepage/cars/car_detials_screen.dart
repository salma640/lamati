import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/screens/homepage/cars/ServicesCar_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../../consts/style.dart';
import '../principle_screen/principle_screen.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 40, bottom: 25),
                      width: StyleConst.widthbuttonlogo,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyService()));
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 40,
                              ),
                            ),
                            Text(' تفاصيل', style: StyleConst.blueTextStylelogo)
                          ])),
                  form.detailrow(),
                  Container(width: 360, height: 1, color: Colors.black),
                  form.detaillist(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: StyleConst.logocolor, width: 3),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: MaterialButton(
                              onPressed: () {
                                AwesomeDialog(
                                  bodyHeaderDistance: 40,
                                  context: context,
                                  dialogType: DialogType.noHeader,
                                  body: Container(
                                      height: 260,
                                      width: 450,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StyleConst.sizeheight20,
                                            Text(
                                                ' عند الرجوع سوف تفقد مقعدك الحالي',
                                                style: GoogleFonts.tajawal(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Text('يوم 8 اغسطس الساعة 4 م',
                                                style: GoogleFonts.tajawal(
                                                    color: StyleConst.logocolor,
                                                    fontSize: 14)),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                    width: 140,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: StyleConst
                                                                .logocolor,
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color: Colors.white),
                                                    child: MaterialButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text('رجوع',
                                                            style: StyleConst
                                                                .blueTextStylelogo))),
                                                Container(
                                                    width: 140,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color:
                                                            Color(0xff0b3fa8)),
                                                    child: MaterialButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const MyService()));
                                                        },
                                                        child: Text('استمرار',
                                                            style: StyleConst
                                                                .whiteTextStylelogo))),
                                              ],
                                            ),
                                            StyleConst.sizeheight20,
                                          ])),
                                ).show();
                              },
                              child: Text('رجوع',
                                  style: StyleConst.blueTextStylelogo))),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 70),
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff0b3fa8)),
                          child: MaterialButton(
                              onPressed: () {
                                AwesomeDialog(
                                  bodyHeaderDistance: 40,
                                  context: context,
                                  dialogType: DialogType.noHeader,
                                  body: Container(
                                      height: 260,
                                      width: 450,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                                'asset/icons/emoji.png'),
                                            Text('شكرا لك',
                                                style: StyleConst
                                                    .blueTextStylelogo),
                                            Text('تم تاكيد الحجز',
                                                style: GoogleFonts.tajawal(
                                                    color: StyleConst.logocolor,
                                                    fontSize: 18)),
                                            Container(
                                                width: 130,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0xff0b3fa8)),
                                                child: MaterialButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Principle()));
                                                    },
                                                    child: Text('تم',
                                                        style: StyleConst
                                                            .whiteTextStylelogo))),
                                            StyleConst.sizeheight20,
                                          ])),
                                ).show();
                              },
                              child: Text('تاكيد',
                                  style: StyleConst.whiteTextStylelogo))),
                    ],
                  ),
                ])),
      ],
    );
  }
}
