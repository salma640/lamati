import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/curd/forgetpassword/send_screen.dart';
import 'package:lam3ty/screens/curd/signup_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/principle_screen/principle_screen.dart';
import 'package:lam3ty/screens/homepage/profile/contraller/profile_contraller.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                const SizedBox(height: 5),
                Text('تسجيل الدخول', style: StyleConst.blueTextStylelogo),
                const SizedBox(height: 20),
                Text('!مرحبا بك مجددا', style: StyleConst.blueesmalltext),
              ]),
              const SizedBox(height: 70),
              Form(
                  child: Column(
                children: [
                  StyleConst.textformlogo(
                      text: 'البريد الالكترونى', obscureText: false),
                  StyleConst.sizeheight10,
                  StyleConst.textformlogo(
                      text: 'كلمة المرور', obscureText: true),
                  Row(textDirection: TextDirection.ltr, children: [
                    Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Send()));
                            },
                            child: Text('نسيت كلمة المرور ؟',
                                style: GoogleFonts.tajawal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: StyleConst.logocolor))))
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
                          child: Text('دخول',
                              style: StyleConst.whiteTextStylelogo))),
                ],
              )),
              const SizedBox(height: 150),
              Container(
                width: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: Text('حساب جديد',
                            style: GoogleFonts.tajawal(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: StyleConst.logocolor))),
                    Text('ليس لديك حساب؟',
                        style: GoogleFonts.tajawal(
                            fontSize: 15, fontWeight: FontWeight.w500))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
/*
Stack(alignment: Alignment.center, children: [
            Image.asset('asset/image/Vector.png'),
            Column(children: [
              const SizedBox(height: 50),
              Text('تسجيل الدخول', style: StyleConst.blueTextStylelogo),
              const SizedBox(height: 20),
              Text('!مرحبا بك مجددا', style: StyleConst.blueesmalltext),
            ])
          ]),*/