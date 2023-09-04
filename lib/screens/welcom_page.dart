
import 'package:flutter/material.dart';
import 'package:my_first_app_book/screens/home_page.dart';
import 'package:my_first_app_book/servise/image.dart';
import 'package:my_first_app_book/servise/strings.dart';

import '../views/view_text_widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String result = "";
  @override
  void initState() {
    super.initState();
    twoPage();
  }
  void twoPage() async {
        await Future<void>.delayed(const Duration(seconds: 3));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const HomePage()));
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.sizeOf(context).height;
    final x = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      body: Center(
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).height,
               width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CustomImages.bookShelf,
                ),
              ),
              child: const WelcomeText(text: CustomStrings.welcome,),
            ),
        ),
    );
  }
}

