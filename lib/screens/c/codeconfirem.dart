import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/principle_screen/principle_screen.dart';
import 'package:lam3ty/screens/homepage/profile/contraller/profile_contraller.dart';

class Confirem extends StatefulWidget {
  const Confirem({super.key});

  @override
  State<Confirem> createState() => _ConfiremState();
}

class _ConfiremState extends State<Confirem> {
  @override
  void initState() {
    super.initState();
    StyleConst.inibar();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileContraller.appbar(text: ''),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Text(
                'رمز التأكيد',
                style: StyleConst.blueTextStylelogo,
              ),
              const SizedBox(height: 30.0),
              Column(children: [
                Container(
                  margin: const EdgeInsets.only(right: 14),
                  child: Row(textDirection: TextDirection.rtl, children: [
                    Text('الرجاء ادخال رمز التأكيد',
                        style: GoogleFonts.tajawal(
                            fontSize: 15, fontWeight: FontWeight.w500))
                  ]),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StyleConst.container,
                      StyleConst.container,
                      StyleConst.container,
                      StyleConst.container,
                    ])
              ]),
              Container(
                  height: StyleConst.heightfeild,
                  width: StyleConst.widthbuttonlogo,
                  decoration: StyleConst.blueboxdelogo,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Principle()));
                      },
                      child:
                          Text('تاكيد', style: StyleConst.whiteTextStylelogo))),
              Container(
                width: 280,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('ارسال جديد ',
                            style: GoogleFonts.tajawal(
                                fontSize: 20, fontWeight: FontWeight.w500))),
                    Text('لم يتم ارسال الرمز؟ ',
                        style: GoogleFonts.tajawal(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const SizedBox(height: 100.0)
            ],
          ),
        ),
      ],
    );
  }
}
