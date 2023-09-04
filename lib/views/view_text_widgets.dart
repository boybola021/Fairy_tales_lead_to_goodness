
import 'package:flutter/material.dart';
import 'package:my_first_app_book/servise/strings.dart';

import '../servise/color.dart';
import '../servise/fonts.dart';

class WelcomeText extends StatelessWidget {
  final String text;
  const WelcomeText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.sizeOf(context).height;
    return  Text(
      text,
      style: TextStyle(fontSize: y / 18),
      textAlign: TextAlign.center,
    );
  }
}

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.sizeOf(context).height;
    return Text(
       text,
        style: TextStyle(
    fontSize: y / 35,
        fontFamily:CustomFonts.playfairDisplay,
        fontWeight: FontWeight.w500,
        color: CustomColors.black30
    ),
    );
  }
}

class ReadBook extends StatelessWidget {
  const ReadBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.of(context).size.height;
    return  Text("read book",style: TextStyle(fontSize: y / 45),);
  }
}
