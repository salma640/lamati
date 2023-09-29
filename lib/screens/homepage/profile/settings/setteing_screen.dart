import 'package:flutter/material.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';
import 'package:lam3ty/screens/homepage/profile/settings/Terms%20and%20Conditions/termandcondition.dart';
import 'package:lam3ty/screens/homepage/profile/settings/notification/notification_screen.dart';

import '../contraller/profile_contraller.dart';
import 'Privacy and security/privacyandsecurity.dart';

class SettingHome extends StatelessWidget {
  const SettingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileController.appbar(text: "الاعدادات"),
          body: Container(
              padding: const EdgeInsets.only(top: 40.0),
              height: 370,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notificationss()));
                    },
                    child: ProfileController.rowlisttile(
                        string: ProfileController.settext[0],
                        icons: ProfileController.seticon[0]),
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
                              builder: (context) =>
                                  const PrivacyAndSecurity()));
                    },
                    child: ProfileController.rowlisttile(
                        string: ProfileController.settext[1],
                        icons: ProfileController.seticon[1]),
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
                              builder: (context) =>
                                  const TermaAndConditions()));
                    },
                    child: ProfileController.rowlisttile(
                        string: ProfileController.settext[2],
                        icons: ProfileController.seticon[2]),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
