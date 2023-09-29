import 'package:flutter/material.dart';
import 'package:lam3ty/consts/style.dart';
import 'package:lam3ty/screens/homepage/cars/newcar_screen.dart';
import 'package:lam3ty/screens/homepage/cars/contorallar/cara.dart';

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        SafeArea(
          child: Scaffold(
              appBar: AppBar(
                  leading: const SizedBox(width: 20),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  actions: [
                    Container(
                        margin: const EdgeInsets.only(right: 20.0, top: 25.0),
                        child: Text('مركباتي',
                            style: StyleConst.blueTextStylelogo))
                  ]),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddCar()));
                },
                child: Icon(Icons.add),
                backgroundColor: StyleConst.logocolor,
                elevation: 15,
              ),
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 645,
                    width: double.infinity,
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 1);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return form.Container_Car();
                      },
                    ),
                  ),
                ],
              ))),
        )
      ],
    );
  }
}
