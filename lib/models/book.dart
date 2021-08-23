class Book {
  String title;
  String author;
  bool isRead = false;

  Book(this.title, this.author, this.isRead);


  void toggleReadStatus() {
    isRead = !isRead;
  }
}
