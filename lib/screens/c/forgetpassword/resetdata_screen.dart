import 'package:flutter/material.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

import '../../homepage/profile/contraller/profile_contraller.dart';
import '../login_screen.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin:
                      const EdgeInsets.only(right: 100, left: 100, bottom: 20),
                  child: Image.asset('asset/icons/Frame.png')),
              StyleConst.sizeheight20,
              Form(
                  child: Column(children: [
                StyleConst.textformlogo(text: 'الاسم', obscureText: false),
                const SizedBox(height: 15),
                StyleConst.textformlogo(
                    text: ' البريد الالكترونى', obscureText: false),
                const SizedBox(height: 15),
                StyleConst.textformlogo(text: 'رقم الهاتف', obscureText: false),
                const SizedBox(height: 30),
                Container(
                    height: StyleConst.heightfeild,
                    width: StyleConst.widthbuttonlogo,
                    decoration: StyleConst.blueboxdelogo,
                    child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogIn()));
                        },
                        child: Text('تحديث',
                            style: StyleConst.whiteTextStylelogo))),
                const SizedBox(height: 55),
              ])),
            ],
          ),
        ),
      ],
    );
  }
}
