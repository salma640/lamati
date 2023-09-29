import 'package:flutter/material.dart';

import '../../../../consts/style.dart';

class principlecontroller {
  static actvicon({required IconData icon}) {
    return Container(
      height: 60,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: StyleConst.logocolor,
              radius: 5,
            ),
            const SizedBox(height: 3),
            Icon(icon, size: 40),
          ]),
    );
  }
}
