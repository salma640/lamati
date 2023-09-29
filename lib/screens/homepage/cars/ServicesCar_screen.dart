import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lam3ty/screens/homepage/cars/car_detials_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../consts/style.dart';
import 'newcar_screen.dart';

class MyService extends StatefulWidget {
  const MyService({super.key});

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  var value;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      form.backgroundscreen(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40, bottom: 50),
                  width: StyleConst.widthbuttonlogo,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AddCar()));
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 40,
                          ),
                        ),
                        Text('خدمات السيارة',
                            style: StyleConst.blueTextStylelogo)
                      ])),
              form.RowOfFeild(),
              StyleConst.sizeheight20,
              form.service(
                  adrreess: 'خدمات رئيسية', coast: 50, typeservice: 'غسيل عام'),
              Column(
                children: [
                  StyleConst.textoverfield(text: "خدمات اضافية", fonsize: 25),
                  Container(
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 64, 63, 63),
                              blurRadius: 1,
                              offset: Offset(1, 1))
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RoundCheckBox(
                            onTap: (val) {
                              AwesomeDialog(
                                //bodyHeaderDistance: 80,
                                context: context,
                                dialogType: DialogType.noHeader,
                                body: Container(
                                    height: 250,
                                    width: 450,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              MaterialButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Icon(Icons.cancel,
                                                    color: Colors.red,
                                                    size: 30),
                                              )
                                            ],
                                          ),
                                          Text('فواحة عطرية',
                                              style: StyleConst.blueesmalltext),
                                          Text(
                                            'هنا يتم وصف المنتج هنا يتم وصف المنتج هنا يتم وصف المنتجهنا يتم وصف المنتجهنا يتم وصف المنتج',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: StyleConst.logocolor),
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 30)
                                        ])),
                              ).show();
                            },
                            borderColor: StyleConst.logocolor,
                            size: 30),
                        Text(' رس\t 10 ', style: StyleConst.blueesmalltext),
                        Text('فواحة عطرية', style: StyleConst.blueesmalltext)
                      ],
                    ),
                  ),
                ],
              ),
              form.coast(),
              Container(
                width: 360,
                height: 2,
                color: Colors.blue,
              ),
              form.addnote(),
              Container(
                  height: StyleConst.heightfeild,
                  width: StyleConst.widthbuttonlogo,
                  decoration: StyleConst.blueboxdelogo,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()));
                      },
                      child: Text('استمرار',
                          style: StyleConst.whiteTextStylelogo))),
            ],
          ))
    ]);
  }
}
