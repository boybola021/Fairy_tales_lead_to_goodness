import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app_book/servise/strings.dart';
import '../database/book_database.dart';
import '../servise/color.dart';
import '../servise/fonts.dart';
import '../views/view_text_fild.dart';
import '../views/view_text_widgets.dart';
import 'book_details.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int categoryIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: categoryIndex);
  }
  void chooseBook({String text = "", int index = -1}) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BookDetailsPage(text: text,index: index,pageIndex: categoryIndex,)));
    setState(() {});
  }
  void onTapTap(int i){
    categoryIndex = i;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.sizeOf(context).width;
    final y = MediaQuery.sizeOf(context).height;
    final book = allBase[categoryIndex];
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const AppBarTitle(text:CustomStrings.myFovourite,)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          children: [
           const SizedBox(height: 20,),
            /// #search qismi
            const CustomTextFild(
              prefixIcon: Icon(CupertinoIcons.search),
              suffix: Icon(CupertinoIcons.mic),
              hintText: CustomStrings.searchBook,
              textSize: 20,
            ),
            SizedBox(height: y / 40,),
            /// #category qismi
            SizedBox(
              height: y / 28,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: CustomStrings.categoryList.length,
                  itemBuilder: (_,i){
                    return GestureDetector(
                      onTap: () => onTapTap(i),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        margin:  i >= 1 ? const EdgeInsets.only(left: 10) : const EdgeInsets.only(left: 0) ,
                        alignment: Alignment.center,
                        decoration:  BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: categoryIndex != i ? Border.all(color: CustomColors.blueGrey):  const Border(),
                          color: categoryIndex == i ? CustomColors.blueGrey : CustomColors.white,
                        ),
                        child: Text(CustomStrings.categoryList[i],style: TextStyle(
                            fontSize: y / 50,
                            color: categoryIndex == i ?
                            CustomColors.white : CustomColors.blueGrey,
                            fontFamily: CustomFonts.inter
                        ),),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: y / 40,),
            /// #book qismi
            Expanded(
              child: GridView.count(
                //primary: true,
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.antiAlias,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 2 / 3,
                children: [
                  for (int i = 0; i < book.length; i++)
                    Container(
                      height: 280,
                      width: 170,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: CustomColors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey,
                              offset: Offset(0,0),
                            blurRadius: 5,
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          /// book image
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13),
                              height: 180,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                /// #color
                                color: CustomColors.fonColor[i % CustomColors.fonColor.length],
                              ),
                              child: Image(
                                fit: BoxFit.cover,
                                /// #image
                                image: AssetImage(book[i].bookImage),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      book[i].bookName.length < 7
                                          ? book[i].bookName
                                          : book[i]
                                              .bookName
                                              .replaceRange(7, null, "..."),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                      style:  TextStyle(
                                        fontSize: y / 44,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: CustomFonts.playfairDisplay,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed:() => chooseBook(text: book[i].bookDescripton,index: i),
                                        icon: Icon(Icons.arrow_circle_right_outlined,size: y / 29,)
                                    ),
                                  ],
                                ),
                               Text(book[i].aftorName,style: TextStyle(fontSize: y / 56),),
                                const SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

