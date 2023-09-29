import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/splash/controller/splash_control.dart';

void main() => runApp(Splash());

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          backgroundColor: StyleConst.logocolor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 420.0,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'asset/image/Vectorbig.png',
                        fit: BoxFit.fill,
                        height: 350,
                      ),
                      //Image.asset('asset/image/pageveiw_2.png')
                      Container(child: spla.splashlogo())
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    height: 30.0,
                    alignment: Alignment.center,
                    width: 300,
                    child: spla.textpage()),
                const SizedBox(
                  height: 15.0,
                ),
                BottonStart(),
                const SizedBox(
                  height: 160.0,
                ),
                NextAndPreviouse()
              ],
            ),
          )),
    );
  }
}
