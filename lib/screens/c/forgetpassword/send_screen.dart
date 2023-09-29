import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/curd/forgetpassword/change_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../homepage/profile/contraller/profile_contraller.dart';
import '../login_screen.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 50),
                Text('نسيت كلمة المرور ؟', style: StyleConst.blueTextStylelogo),
                const SizedBox(height: 100),
                Form(
                    child: Column(
                  children: [
                    Container(
                      width: StyleConst.widthbuttonlogo,
                      height: StyleConst.heightfeild,
                      child: const Text(
                        'ادخل عنوان بريدك الالكترونى ادناه وسنرسل لك رابطا\n لاعادة تعيين كلمة مرورك',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    StyleConst.sizeheight10,
                    StyleConst.textformlogo(
                        text: 'كلمة المرور', obscureText: true),
                    const SizedBox(height: 40),
                    Container(
                        height: StyleConst.heightfeild,
                        width: StyleConst.widthbuttonlogo,
                        decoration: StyleConst.blueboxdelogo,
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Change()));
                            },
                            child: Text('ارسال',
                                style: StyleConst.whiteTextStylelogo))),
                  ],
                )),
                const SizedBox(height: 200),
                Container(
                  width: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                          child: Text('تسجيل الدخول',
                              style: StyleConst.blueesmalltext)),
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
