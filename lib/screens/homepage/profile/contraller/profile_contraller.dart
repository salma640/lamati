import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/style.dart';

class ProfileController {
  static TextStyle styleprofile = GoogleFonts.tajawal(
      fontSize: 24, fontWeight: FontWeight.w700, color: Colors.red[500]);

  static rowlisttile({required String string, required IconData icons}) {
    return Container(
      height: 60,
      width: StyleConst.widthbuttonlogo,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(textDirection: TextDirection.rtl, children: [
        Icon(icons, color: Colors.grey[600], size: 40),
        const SizedBox(width: 13),
        Text(string,
            style: GoogleFonts.tajawal(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.grey[600])),
      ]),
    );
  }

  static appbar({required String text}) {
    return AppBar(
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20.0, top: 25.0),
              child: Text(text, style: StyleConst.blueTextStylelogo))
        ]);
  }

  static List icon = [
    Icons.account_balance_wallet_outlined,
    Icons.settings_outlined,
    Icons.help_outline,
    Icons.logout
  ];
  static List seticon = [
    Icons.notifications,
    Icons.policy,
    FontAwesomeIcons.listCheck,
    Icons.logout
  ];

  static List text = ['محفظتي', "الاعدادت", "مساعدة", "خروج"];
  static List settext = ['الاشعارات', "الخصوصية و الامان", "الشروط و الاحكام"];
}
