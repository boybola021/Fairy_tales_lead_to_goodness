
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
  const BookDiscription({Key? key, required this.x, required this.y, required this.index, required this.pageIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.sizeOf(context).width;
    final y = MediaQuery.sizeOf(context).height;
    final  book = allBase[pageIndex];
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: y * 0.50,
            decoration:  BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter:   ColorFilter.mode(Colors.white.withOpacity(0.9), BlendMode.luminosity),
                image: AssetImage(book[index].bookImage),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                   // const SizedBox(width: 20,),
                    ArrowBackIconLeftWidget(height: y / 25,),
                  //  SizedBox(width: x * 0.15,),
                    Text(
                      "${book[index].bookName}\n",
                      style: TextStyle(
                          fontSize: y / 35,
                          height: 1.5,
                          color: CustomColors.black30
                      ),
                    ),
                  ],
                ),
                SizedBox(height: y / 22,),
                Image(height: 250,image: AssetImage(book[index].bookImage,),),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Expanded(
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Synops",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 23,fontFamily: CustomFonts.playfairDisplay)),
                  const SizedBox(height: 12,),
                  Text(book[index].bookDescripton,style:  TextStyle(
                    fontSize: y / 45,
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
