import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bookshelf/providers/book_list_model.dart';
import 'package:bookshelf/widgets/book_list.dart';

class AllBooksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<BooksListModel>(
        builder: (context, books, child) => BookList(
          books: books.allBooks,
        ),
      ),
    );
  }
}