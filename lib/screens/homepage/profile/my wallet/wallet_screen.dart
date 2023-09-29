import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(
              size: 30,
              color: Colors.black, //change your color here
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Container(
                  margin: const EdgeInsets.only(right: 20, top: 25.0),
                  child: Text('المحفظة', style: StyleConst.blueTextStylelogo))
            ],
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 40),
            width: 400,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('asset/icons/wallet.png'),
                const SizedBox(height: 12),
                Text('الرصيد المتاح',
                    style: GoogleFonts.tajawal(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700])),
                const SizedBox(height: 12),
                Text(' رس\t50', style: StyleConst.blueTextStylelogo)
              ],
            ),
          ),
        )
      ],
    );
  }
}
