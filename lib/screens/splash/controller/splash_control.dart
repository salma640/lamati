import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../consts/style.dart';
import '../../c/login_screen.dart';

class splash {
  static PageController pc = PageController();
  static PageController pc2 = PageController();
  static splashlogo() {
    return PageView.builder(
        controller: pc,
        itemBuilder: (BuildContext context, int i) {
          return Image.asset(images[i]['url']);
        });
  }

  static int x = 0;
//
  static textpage() {
    return PageView.builder(
        controller: pc2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text(
              stringtext[index]['text'],
              style: GoogleFonts.tajawal(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: StyleConst.whitelogocol,
              ),
            ),
          );
        });
  }

  static smoothly() {
    return AnimatedSmoothIndicator(
      activeIndex: spla.x,
      count: 3,
      effect: CustomizableEffect(
          dotDecoration: DotDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              width: 28,
              height: 9),
          activeDotDecoration: DotDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              width: 35,
              height: 14)),
    );
  }
}

List images = [
  {'url': 'asset/image/logo_1.png'},
  {'url': 'asset/image/logo_2.png'},
  {'url': 'asset/image/logo_3.png'}
];
List stringtext = [
  {'text': 'رعاية حقيقية نتائج موثوقة '},
  {'text': ' نحن نهتم بمركبتك بقدر اهتمامك'},
  {'text': 'توفر المعدات الدقيقة نتائج مثالية'},
];

class BottonStart extends StatefulWidget {
  const BottonStart({super.key});

  @override
  State<BottonStart> createState() => _BottonStartState();
}

class _BottonStartState extends State<BottonStart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        width: StyleConst.widthbuttonlogo,
        decoration: StyleConst.whiteboxdelogo,
        child: MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogIn()));

              // Push a route using the context.
            },
            child: Text('ابداء الأن', style: StyleConst.blueTextStylelogo)));
  }
}

class NextAndPreviouse extends StatefulWidget {
  const NextAndPreviouse({super.key});

  @override
  State<NextAndPreviouse> createState() => _NextAndPreviouseState();
}

class _NextAndPreviouseState extends State<NextAndPreviouse> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                spla.x--;
              });
              spla.pc.previousPage(
                  duration: Duration(microseconds: 300), curve: Curves.easeIn);
              spla.pc2.previousPage(
                  duration: Duration(microseconds: 300), curve: Curves.easeIn);
            },
            child: (spla.x > 0)
                ? Text(
                    'السابق',
                    style: StyleConst.whitesmalltext,
                  )
                : SizedBox(width: 60)),
        spla.smoothly(),
        TextButton(
            onPressed: () {
              setState(() {
                splash.x++;
              });
              splash.pc.nextPage(
                  duration: Duration(microseconds: 300), curve: Curves.easeIn);
              splash.pc2.nextPage(
                  duration: Duration(microseconds: 300), curve: Curves.easeIn);
            },
            child: (splash.x < 2)
                ? Text(' التالي ', style: StyleConst.whitesmalltext)
                : SizedBox(width: 60))
      ],
    );
  }
}
