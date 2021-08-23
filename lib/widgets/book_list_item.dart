import 'package:bookshelf/models/book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bookshelf/providers/book_list_model.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: book.isRead,
        onChanged: (value) {
            Provider.of<BooksListModel>(context, listen: false).toggleRead(book);
        },
      ),
      title: Text(book.title),
      subtitle: Text(book.author),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          Provider.of<BooksListModel>(context, listen: false).deleteBook(book);
        },
      ),
    );
  }
}
