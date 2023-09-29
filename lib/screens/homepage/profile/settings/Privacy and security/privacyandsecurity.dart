import 'package:flutter/material.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/profile/contraller/profile_contraller.dart';

void main() => runApp(const PrivacyAndSecurity());

class PrivacyAndSecurity extends StatelessWidget {
  const PrivacyAndSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileContraller.appbar(text: 'الخصوصية و الامان'),
          body: Center(
            child: Container(
              height: 280,
              width: 350,
              child: Column(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('الخصوصية والامان', style: StyleConst.blueTextStylelogo),
                  TextButton(
                      onPressed: () {},
                      child: Text('سياسة الخصوصية',
                          style: StyleConst.blacksmalltext)),
                  TextButton(
                      onPressed: () {},
                      child: Text('مركز الخصوصية',
                          style: StyleConst.blacksmalltext)),
                  TextButton(
                      onPressed: () {},
                      child:
                          Text(' تواصل معنا', style: StyleConst.blacksmalltext))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
