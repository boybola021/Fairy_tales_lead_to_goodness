import 'package:flutter/material.dart';
import 'package:my_first_app_book/servise/color.dart';

class ReaderPage extends StatefulWidget {
  final String fullText;
  final String bookName;

  const ReaderPage({Key? key, required this.fullText, this.bookName = ""})
      : super(key: key);

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  final double p = 24.0;
  final double s = 18.0;
  bool isSellected = false;

  void onPressed() {
    isSellected = !isSellected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: isSellected ? CustomColors.black30 : CustomColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
          onPressed: onPressed,
          icon: isSellected
              ? const Icon(Icons.mode_night, color: CustomColors.black30)
              : const Icon(
            Icons.sunny,
            color: Colors.red,
          ),
        ),
      ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: y * 0.10),
        child: ListView(
          children: [
            Center(
                child: Text(
              widget.bookName,
              style: TextStyle(
                fontSize: y / 30,
                color: isSellected ? CustomColors.white : CustomColors.black30,
              ),
            )),
            SizedBox(
              height: y / 26,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 3 * s,
                  height: 3.5 * s,
                  child: Text(
                    widget.fullText.substring(0, 1),
                    style: TextStyle(fontSize: 4 * s, height: 1,color: isSellected ? CustomColors.white : CustomColors.black30,),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.fullText.substring(1, 6 * (x - 2 * p - 3 * s) ~/ s),
                    style: TextStyle(
                      fontSize: s,
                      color: isSellected ? CustomColors.white : CustomColors.black30,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Text(
              widget.fullText.substring(6 * (x - 2 * p - 3 * s ~/ 2) ~/ 2),
              style: TextStyle(
                fontSize: s,
                color: isSellected ? CustomColors.white : CustomColors.black30,
              ),
              softWrap: true,
            ),
            SizedBox(
              height: y / 20,
            ),
          ],
        ),
      ),
    );
  }
}
