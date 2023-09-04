
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';

class ArrowBackIconLeftWidget extends StatelessWidget {
  final double height;
  const ArrowBackIconLeftWidget({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:  Icon(
        CupertinoIcons.arrow_left_circle,
        size: height,
      ),);
  }
}

class ArrowBackIconRightWidget extends StatelessWidget {
  const ArrowBackIconRightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(
        CupertinoIcons.arrow_right_circle,
        size: 30,
      ),);
  }
}

class CustomElevtedButton extends StatelessWidget {
  final Widget page;
  final Widget textWidget;
  final double height;
  final double width;
  const CustomElevtedButton({Key? key, this.height = 60,this.width = 280,required this.page,required this.textWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        elevation: 0,
        fixedSize: const Size( 280, 60),
        backgroundColor: CustomColors.bluGrey64,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      child: textWidget,
    );
  }
}
