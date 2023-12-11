
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app_book/model/book_model.dart';
import 'package:my_first_app_book/screens/read_page.dart';

import '../database/book_database.dart';
import '../servise/color.dart';
import '../servise/fonts.dart';
import '../servise/icons.dart';
import '../views/book_decription.dart';
import '../views/view_text_widgets.dart';

class BookDetailsPage extends StatefulWidget {
  final int index;
  final String text;
  final int pageIndex;
  const BookDetailsPage({Key? key, required this.index, required this.text, required this.pageIndex}) : super(key: key);

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    final  book = allBase[widget.pageIndex];
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 14,horizontal: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevtedButton(
                page:  ReaderPage(fullText: book[widget.index].fullText,bookName: book[widget.index].bookName,),
                textWidget: const ReadBook(),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(book[widget.index].bookName,style: const TextStyle(fontSize: 23,color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: SafeArea(
        child: BookDiscription(x: x, y: y, index: widget.index,pageIndex: widget.pageIndex,),
      ),
    );
  }
}


