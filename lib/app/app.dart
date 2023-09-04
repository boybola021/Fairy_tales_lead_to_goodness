



import 'package:flutter/material.dart';
import 'package:my_first_app_book/screens/welcom_page.dart';

import '../screens/home_page.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
