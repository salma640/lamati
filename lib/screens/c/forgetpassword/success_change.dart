import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/curd/forgetpassword/resetdata_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../homepage/profile/contraller/profile_contraller.dart';
import '../login_screen.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Image.asset('asset/icons/Group 1.png'),
                StyleConst.sizeheight10,
                Text(
                  'تم تغيير كلمة السر بنجاح',
                  style: GoogleFonts.tajawal(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
                StyleConst.sizeheight10,
                Container(
                  width: 200.0,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Reset()));
                      },
                      child: Text(' حدث بياناتك',
                          style: StyleConst.blueesmalltext)),
                ),
                const SizedBox(height: 200),
                Container(
                  width: 200.0,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()));
                      },
                      child: Text('تسجيل الدخول',
                          style: StyleConst.blueesmalltext)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
