import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/ServicesCar_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/principle_screen/principle_screen.dart';

class AddCar extends StatefulWidget {
  const AddCar({super.key});

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  @override
  void initState() {
    super.initState();
    StyleConst.inibar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset('asset/image/Vector.png'),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      width: StyleConst.widthbuttonlogo,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop(Principle());
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 40,
                              ),
                            ),
                            Text('مركبة جديدة',
                                style: StyleConst.blueTextStylelogo)
                          ])),
                  const SizedBox(height: 37),
                  Column(children: [
                    Row(textDirection: TextDirection.rtl, children: [
                      Container(
                          margin: const EdgeInsets.only(right: 18.0),
                          child: Text('نوع المركبة',
                              style: GoogleFonts.tajawal(
                                  fontSize: 14, fontWeight: FontWeight.w700)))
                    ]),
                    Container(
                        margin: const EdgeInsets.only(top: 3.0),
                        height: 50,
                        width: StyleConst.widthbuttonlogo,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                              color: StyleConst.colorborder,
                              style: BorderStyle.solid,
                              width: 3),
                        ),
                        child: TextFormField(
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'النوع',
                                hintTextDirection: TextDirection.rtl,
                                prefixIcon:
                                    Icon(Icons.arrow_drop_down, size: 40))))
                  ])
                ])
          ]),
          Container(
            margin: const EdgeInsets.only(top: 16),
            width: StyleConst.widthbuttonlogo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                form.smalltextfield(
                    text: 'ماركة المركبة',
                    intext: 'الماركة',
                    diricon: true,
                    icon: form.dropdown),
                form.smalltextfield(
                    text: 'موديل المركبة',
                    intext: 'الموديل',
                    diricon: true,
                    icon: form.dropdown)
              ],
            ),
          ),
          Column(children: [
            Row(textDirection: TextDirection.rtl, children: [
              Container(
                  margin: const EdgeInsets.only(right: 15, top: 20, bottom: 5),
                  child: Text('لون المركبة',
                      style: GoogleFonts.tajawal(
                          fontSize: 14, fontWeight: FontWeight.w700)))
            ]),
            Container(
              width: 450.0,
              height: 45,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: form.colorcontainer(),
            ),
            Container(
              alignment: Alignment.center,
              width: 366,
              height: 177,
              margin: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: StyleConst.colorborder, width: 3)),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StyleConst.sizeheight10,
                    Text('اضافة صورة للمركبة (أختياري)',
                        style: GoogleFonts.tajawal(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Image.asset('asset/icons/camera.png', height: 145),
                  ],
                ),
              ),
            ),
            Column(children: [
              Row(textDirection: TextDirection.rtl, children: [
                Container(
                    margin: const EdgeInsets.only(right: 18.0),
                    child: Text(' رقم الهاتف',
                        style: GoogleFonts.tajawal(
                            fontSize: 14, fontWeight: FontWeight.bold)))
              ]),
              Container(
                  margin: const EdgeInsets.only(top: 3.0),
                  height: 50,
                  width: StyleConst.widthbuttonlogo,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                    border: Border.all(
                        color: StyleConst.colorborder,
                        style: BorderStyle.solid,
                        width: 3),
                  ),
                  child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none))),
            ]),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 50.0,
                width: StyleConst.widthbuttonlogo,
                decoration: StyleConst.blueboxdelogo,
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyService()));
                    },
                    child:
                        Text('اضافة', style: StyleConst.whiteTextStylelogo))),
          ])
        ],
      ),
    );
  }
}
