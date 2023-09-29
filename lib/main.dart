import 'package:flutter/material.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contex) {
    StyleConst.inibar();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
