
class BookModel{
  String aftorName;
  String bookName;
  String bookDescripton;
  String fullText;
  int page;
  String bookImage;
  BookModel({
    required this.aftorName,
    required this.bookName,
    required this.bookDescripton,
    required this.fullText,
    required this.page,
     required this.bookImage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookModel &&
          runtimeType == other.runtimeType &&
          aftorName == other.aftorName &&
          bookName == other.bookName &&
          page == other.page;

  @override
  int get hashCode => Object.hash(aftorName,bookName,page);

  @override
  String toString() {
    return 'BookModel{book name: $bookName}\nBookModel{book after: $aftorName}';
  }
}
