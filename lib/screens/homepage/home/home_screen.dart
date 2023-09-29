import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import '../cars/newcar_screen.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({super.key});

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'asset/image/map.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.only(top: 50),
                    height: StyleConst.heightfeild,
                    width: StyleConst.widthbuttonlogo,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xffC5D4F5),
                    ),
                    child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'ابحث عن موقعك',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: GoogleFonts.tajawal(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: StyleConst.logocolor),
                            prefixIcon: const Icon(Icons.search,
                                color: StyleConst.logocolor)))),
                Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 182.0,
                              height: StyleConst.heightfeild,
                              decoration: StyleConst.blueboxdelogo,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AddCar()));
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(' اضف مركبة',
                                            style: StyleConst.whitesmalltext),
                                        Image.asset('asset/icons/carplust2.png',
                                            width: 30,
                                            height: 30,
                                            color: Colors.white)
                                      ]))),
                          Container(
                              width: 182.0,
                              height: StyleConst.heightfeild,
                              decoration: StyleConst.blueboxdelogo,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                                iconPadding:
                                                    const EdgeInsets.all(5),
                                                icon: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      icon: Icon(Icons.cancel,
                                                          color: StyleConst
                                                              .logocolor,
                                                          size: 30.0),
                                                    ),
                                                  ],
                                                ),
                                                content: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      width: 300,
                                                      height: 150,
                                                      child: Image.asset(
                                                        'asset/image/plus_car.png',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    StyleConst.sizeheight20,
                                                    Text(
                                                        "الرجاء اضافة مركبة واحدة على الاقل لمواصلة الحجز",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.tajawal(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                  ],
                                                ),
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                actions: [
                                                  Center(
                                                    child: Container(
                                                      width: 155.0,
                                                      height: StyleConst
                                                          .heightfeild,
                                                      decoration: StyleConst
                                                          .blueboxdelogo,
                                                      child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            AddCar()));
                                                          },
                                                          child: Text(
                                                            "اضافة الان",
                                                            style: StyleConst
                                                                .whitesmalltext,
                                                          )),
                                                    ),
                                                  )
                                                ],
                                                actionsPadding:
                                                    EdgeInsets.all(20));
                                          });
                                    });
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('احجز الان',
                                            style: StyleConst.whitesmalltext),
                                        Icon(Icons.add,
                                            size: 40, color: Colors.white)
                                      ])))
                        ]))
              ]))
    ]);
  }
}
