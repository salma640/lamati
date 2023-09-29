import 'package:flutter/material.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/profile/contraller/profile_contraller.dart';
import 'package:lam3ty/screens/homepage/profile/helper/help_screen.dart';
import 'package:lam3ty/screens/homepage/profile/my%20wallet/wallet_screen.dart';
import 'package:lam3ty/screens/homepage/profile/settings/setteing_screen.dart';
import 'package:lam3ty/screens/splash/splash_screen.dart';

import '../../../consts/style.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      form.backgroundscreen(),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              leading: const SizedBox(width: 20),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: [
                Container(
                    margin: const EdgeInsets.only(right: 20.0, top: 25.0),
                    child: Text('الملف الشخصي',
                        style: StyleConst.blueTextStylelogo))
              ]),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: StyleConst.logocolor, offset: Offset(.5, 0.5))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Image.asset('asset/icons/person.png'),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('شعيب ربيع جابر',
                            style: StyleConst.blacksmalltext),
                        Row(children: [
                          Text('0.0', style: StyleConst.blacksmalltext),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 30, color: Colors.yellow),
                        ]),
                        StyleConst.sizeheight10
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Wallet()));
                        },
                        child: ProfileContraller.rowlisttile(
                            string: ProfileContraller.text[0],
                            icons: ProfileContraller.icon[0]),
                      ),
                      Container(
                          color: Colors.grey,
                          height: 2,
                          width: 350,
                          margin: const EdgeInsets.symmetric(vertical: 10.0)),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingHome()));
                        },
                        child: ProfileContraller.rowlisttile(
                            string: ProfileContraller.text[1],
                            icons: ProfileContraller.icon[1]),
                      ),
                      Container(
                          color: Colors.grey,
                          height: 2,
                          width: 350,
                          margin: const EdgeInsets.symmetric(vertical: 10.0)),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HelpScreen()));
                        },
                        child: ProfileContraller.rowlisttile(
                            string: ProfileContraller.text[2],
                            icons: ProfileContraller.icon[2]),
                      ),
                      Container(
                          color: Colors.grey,
                          height: 2,
                          width: 350,
                          margin: const EdgeInsets.symmetric(vertical: 10.0)),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Splash()),
                              (Route<dynamic> route) => false);
                        },
                        child: ProfileContraller.rowlisttile(
                            string: ProfileContraller.text[3],
                            icons: ProfileContraller.icon[3]),
                      ),
                    ],
                  )),
            ],
          ))
    ]);
  }
}
