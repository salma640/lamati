

import '../../homepage/profile/contraller/profile_contraller.dart';

class Change extends StatefulWidget {
  const Change({super.key});

  @override
  State<Change> createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  @override
  void initState() {
    super.initState();
    StyleConst.inibar();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        form.backgroundscreen(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: ProfileController.appbar(text: ''),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text('نسيت كلمة المرور؟', style: StyleConst.blueTextStylelogo),
              const SizedBox(height: 115),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل. تذكر أنه لا يوصى باعادة استخدام أسماء المستخدمين وكلمات المرور لخدمات و مواقع الويب المختلفة',
                  textDirection: TextDirection.rtl,
                ),
              ),
              StyleConst.sizeheight20,
              Form(
                  child: Column(children: [
                StyleConst.textformlogo(
                    text: 'كلمة المرور الجديدة', obscureText: false),
                StyleConst.sizeheight10,
                StyleConst.textformlogo(
                    text: 'كلمة المرور مرة أخرى', obscureText: true),
                StyleConst.sizeheight20,
                Container(
                    height: StyleConst.heightfeild,
                    width: StyleConst.widthbuttonlogo,
                    decoration: StyleConst.blueboxdelogo,
                    child: MaterialButton(
                        onPressed: () {
                          MaterialPageRoute(builder: (context) => Success());
                        },
                        child: Text('تغيير',
                            style: StyleConst.whiteTextStylelogo))),
              ])),
            ],
          ),
        ),
      ],
    );
  }
}
