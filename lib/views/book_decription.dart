import 'package:flutter/material.dart';
import '../database/book_database.dart';
import '../servise/color.dart';
import '../servise/fonts.dart';
import '../servise/icons.dart';

class BookDiscription extends StatelessWidget {
  final double x;
  final double y;
  final int index;
  final int pageIndex;

  const BookDiscription(
      {Key? key,
      required this.x,
      required this.y,
      required this.index,
      required this.pageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.sizeOf(context).width;
    final y = MediaQuery.sizeOf(context).height;
    final book = allBase[pageIndex];
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          height: y * 0.50,
          width: x,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.9), BlendMode.luminosity),
              image: AssetImage(book[index].bookImage),
            ),
          ),
          child: Center(
            child: Image(
              height: 250,
              width: 250,
              image: AssetImage(
                book[index].bookImage,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Synops",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 23,
                  fontFamily: CustomFonts.playfairDisplay)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            book[index].bookDescripton,
            style: TextStyle(
              fontSize: y / 45,
            ),
          ),
        ),
      ],
    );
  }
}
