

import 'package:my_first_app_book/model/book_model.dart';
import 'package:my_first_app_book/servise/image.dart';
import 'package:my_first_app_book/servise/strings.dart';

final egri        = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100);
final kenjaBotir  = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100);
final oltinBailq  = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100);
final tulkivoy    = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100);
final urtuqmoq    = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100);
final xurmacha    = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100);
final zumrad      = BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100);
final List<BookModel> ertaklar = [
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100),
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100) ,
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100)  ,
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100)   ,
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100)    ,
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100)    ,
 BookModel(aftorName: CustomStrings.aftorName, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100)     ,
];
final List<BookModel> roman    = [
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100),
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100) ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100)  ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100)   ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100)     ,
];
final List<BookModel> detektiv = [
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100),
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100) ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100)  ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100)   ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100)     ,
];
final List<BookModel> hikoya   = [
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100),
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100) ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100)  ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100)   ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100)     ,
];
final List<BookModel> ilmiy = [
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.egri      , bookDescripton: BookDescription.egriVaTugriDecription,bookImage: CustomImages.egriVaTugri, fullText: BookText.egriVaTugri, page: 100),
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.kenjaBotir, bookDescripton: BookDescription.kenjaBotirDecription,bookImage: CustomImages.kenjaBotir, fullText: BookText.kenjaBotir, page: 100) ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.oltinBailq, bookDescripton: BookDescription.oltinBaliqDecription,bookImage: CustomImages.oltinBaliq, fullText: BookText.oltinBaliq, page: 100)  ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.tulkivoy  , bookDescripton: BookDescription.tulkivoyDecription  ,bookImage: CustomImages.tulkivoy, fullText: BookText.tulkivoy  , page: 100)   ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.urtuqmoq  , bookDescripton: BookDescription.urtuqmoqDecription  ,bookImage: CustomImages.urtuqmoq, fullText: BookText.urtuqmoq  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.xurmacha  , bookDescripton: BookDescription.xurmachaDecription  ,bookImage: CustomImages.xurmacha, fullText: BookText.xurmacha  , page: 100)    ,
  BookModel(aftorName: CustomStrings.search, bookName: CustomStrings.zumrad    , bookDescripton: BookDescription.zumradDecription    ,bookImage: CustomImages.zumrad, fullText: BookText.zumrad    , page: 100)     ,
];
final List<BookModel> hammasi = [...ertaklar,...roman,...detektiv,...hikoya,...ilmiy];
final allBase = [hammasi,ertaklar,roman,detektiv,hikoya,ilmiy];
