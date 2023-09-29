import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/curd/codeconfirem.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../homepage/profile/contraller/profile_contraller.dart';
import 'login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          appBar: ProfileController.appbar(text: ''),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  const SizedBox(height: 28),
                  Text('تسجيل جديد', style: StyleConst.blueTextStylelogo),
                  const SizedBox(height: 25),
                  StyleConst.textformlogo(text: ' الاسم', obscureText: false),
                ]),
                const SizedBox(height: 5),
                StyleConst.textformlogo(
                    text: ' البريد الالكترونى', obscureText: false),
                const SizedBox(height: 5),
                StyleConst.textformlogo(text: 'رقم الهاتف', obscureText: false),
                const SizedBox(height: 5),

                // text with roundcheckbox in row
                Row(textDirection: TextDirection.rtl, children: [
                  const SizedBox(width: 20),
                  Row(children: [
                    Text('ذكر',
                        style: GoogleFonts.tajawal(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    RoundCheckBox(
                        uncheckedColor: StyleConst.colortextfield,
                        checkedColor: StyleConst.logocolor,
                        border: Border.all(
                            width: 3.0, color: StyleConst.colorborder),
                        onTap: (val) {},
                        size: 30)
                  ]),
                  const SizedBox(width: 100),
                  // text with roundcheckbox in row
                  Row(children: [
                    Text('انثى',
                        style: GoogleFonts.tajawal(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    RoundCheckBox(
                        uncheckedColor: StyleConst.colortextfield,
                        checkedColor: StyleConst.logocolor,
                        border: Border.all(
                            width: 3.0, color: StyleConst.colorborder),
                        onTap: (val) {},
                        size: 30)
                  ])
                ]),
                const SizedBox(height: 5),
                StyleConst.textformlogo(
                    text: ' كلمة المرور', obscureText: false),
                const SizedBox(height: 5),
                StyleConst.textformlogo(
                    text: 'تاكيد كلمة المرور', obscureText: false),
                const SizedBox(height: 5),
                // text with roundcheckbox in row

                Row(textDirection: TextDirection.rtl, children: [
                  const SizedBox(width: 20),
                  RoundCheckBox(
                      uncheckedColor: StyleConst.colortextfield,
                      checkedColor: StyleConst.logocolor,
                      border:
                          Border.all(width: 3.0, color: StyleConst.colorborder),
                      onTap: (val) {},
                      size: 30),
                  Text('موافق على الشروط و الاحكام',
                      style: GoogleFonts.tajawal(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ]),
                const SizedBox(height: 5),
                Container(
                    height: StyleConst.heightfeild,
                    width: StyleConst.widthbuttonlogo,
                    decoration: StyleConst.blueboxdelogo,
                    child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Confirem()));
                        },
                        child: Text('تسجيل',
                            style: StyleConst.whiteTextStylelogo))),

                const SizedBox(height: 5),
                Container(
                  width: 195,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // const SizedBox(width: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                          child: Text(' تسجيل دخول',
                              style: GoogleFonts.tajawal(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: StyleConst.logocolor))),
                      Text(' لديك حساب؟',
                          style: GoogleFonts.tajawal(
                              fontSize: 15, fontWeight: FontWeight.w500))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
