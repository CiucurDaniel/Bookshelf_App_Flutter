import 'package:flutter/material.dart';

import 'package:bookshelf/models/book.dart';
import 'package:bookshelf/widgets/book_list_item.dart';

class BookList extends StatelessWidget {
  final List<Book> books;

  BookList({required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return books.map((item) => BookListItem(book: item)).toList();
  }
}