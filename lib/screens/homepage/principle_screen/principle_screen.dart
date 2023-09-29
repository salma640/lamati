import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/data.dart';
import 'package:lam3ty/screens/homepage/principle_screen/controller/principle_controller.dart';

class Principle extends StatefulWidget {
  const Principle({super.key});

  @override
  State<Principle> createState() => _PrincipleState();
}

class _PrincipleState extends State<Principle> {
  GlobalKey back = GlobalKey();
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: back,
        child: Screens.elementAt(list),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              list = value;
            });
          },
          selectedLabelStyle:
              GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w700),
          unselectedLabelStyle:
              GoogleFonts.tajawal(fontSize: 14, fontWeight: FontWeight.w700),
          showUnselectedLabels: true,
          iconSize: 30,
          currentIndex: list,
          //fixedColor: Colors.black,
          backgroundColor: Colors.white70,
          selectedItemColor: StyleConst.logocolor,
          unselectedItemColor: Color.fromARGB(255, 107, 106, 106),
          items: [
            BottomNavigationBarItem(
                activeIcon:
                    principlecontroller.actvicon(icon: Icons.person_outline),
                icon: Icon(Icons.person_outline),
                label: " الحساب"),
            BottomNavigationBarItem(
                activeIcon: principlecontroller.actvicon(
                    icon: Icons.calendar_month_outlined),
                icon: Icon(Icons.calendar_month_outlined),
                label: "الحجز"),
            BottomNavigationBarItem(
                activeIcon:
                    principlecontroller.actvicon(icon: FontAwesomeIcons.car),
                icon: Icon(FontAwesomeIcons.car),
                label: "المركبات"),
            BottomNavigationBarItem(
                activeIcon:
                    principlecontroller.actvicon(icon: Icons.home_outlined),
                icon: Icon(Icons.home_outlined),
                label: "الرئيسية"),
          ]),
    );
  }
}
