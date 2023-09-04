
import 'package:flutter/material.dart';

import '../servise/color.dart';

class CustomTextFild extends StatelessWidget {
  final double textSize;
  final prefixIcon;
  final hintText;
  final suffix;
  const CustomTextFild({Key? key,
    this.textSize = 20,
    this.prefixIcon,
    this.hintText,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: CustomColors.grey248,
      ),
      child: TextField(
        style: const TextStyle(fontSize: 18,color: CustomColors.black30),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              borderSide: const BorderSide(color: CustomColors.grey248)
          ),
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconColor: CustomColors.black30,
          hintText: hintText,
          hintStyle: const TextStyle(color: CustomColors.black30),
          suffixIcon: suffix,
          suffixIconColor: CustomColors.black30,
        ),
      ),
    );
  }
}
