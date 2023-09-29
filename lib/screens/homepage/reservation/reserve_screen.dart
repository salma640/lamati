import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/reservation/controllar/reseve_controllar.dart';

class MyReserve extends StatefulWidget {
  const MyReserve({super.key});

  @override
  State<MyReserve> createState() => _MyReserveState();
}

class _MyReserveState extends State<MyReserve> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      form.backgroundscreen(),
      DefaultTabController(
          length: 2,
          child: SafeArea(
              top: true,
              child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: redetail.appbar(),
                  body: TabBarView(physics: BouncingScrollPhysics(), children: [
                    Column(
                      children: [
                        Container(
                          width: 400,
                          margin: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 178,
                                height: 85,
                                child: GestureDetector(
                                  onTap: () {
                                    AwesomeDialog(
                                      bodyHeaderDistance: 0,
                                      context: context,
                                      dialogType: DialogType.noHeader,
                                      body: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          height: 420,
                                          width: 450,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: StyleConst
                                                        .widthbuttonlogo,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon: const Icon(
                                                                  Icons.cancel,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 20)),
                                                          Text(' التفاصيل',
                                                              style: StyleConst
                                                                  .blueesmalltext)
                                                        ])),
                                                Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10),
                                                    width: 280,
                                                    height: 1,
                                                    color: Colors.grey[500]),
                                                redetail.alertdetaildailog(
                                                    name: 'فلكسواجن'),
                                                Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10),
                                                    width: 280,
                                                    height: 1,
                                                    color: Colors.grey[500]),
                                                redetail.AlertDialogdetaillist()
                                              ])),
                                    ).show();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 178,
                                    height: 80,
                                    decoration: redetail.boxDecoration,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        redetail.timeanddate(
                                            color: Color.fromARGB(
                                                255, 139, 138, 138)),
                                        redetail.nameandcolor(
                                            text: 'فلكسواجن',
                                            backcolor: Colors.red)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 173,
                                height: 85,
                                child: GestureDetector(
                                  onTap: () {
                                    AwesomeDialog(
                                      bodyHeaderDistance: 0,
                                      context: context,
                                      dialogType: DialogType.noHeader,
                                      body: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          height: 420,
                                          width: 450,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: StyleConst
                                                        .widthbuttonlogo,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon: const Icon(
                                                                  Icons.cancel,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 20)),
                                                          Text(' التفاصيل',
                                                              style: StyleConst
                                                                  .blueesmalltext)
                                                        ])),
                                                Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10),
                                                    width: 280,
                                                    height: 1,
                                                    color: Colors.grey[500]),
                                                redetail.alertdetaildailog(
                                                    name: 'فيراري'),
                                                Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10),
                                                    width: 280,
                                                    height: 1,
                                                    color: Colors.grey[500]),
                                                redetail.AlertDialogdetaillist()
                                              ])),
                                    ).show();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 170,
                                    height: 80,
                                    decoration: redetail.boxDecoration,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        redetail.timeanddate(
                                            color: const Color.fromARGB(
                                                255, 136, 135, 135)),
                                        redetail.nameandcolor(
                                            text: 'فيراري',
                                            backcolor: Colors.black)
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    redetail.screennow()
                  ]))))
    ]);
  }
}
