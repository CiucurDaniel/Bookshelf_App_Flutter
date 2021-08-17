import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/book.dart';

class BooksListModel extends ChangeNotifier {
  final List<Book> _books = [];

  UnmodifiableListView<Book> get allBooks => UnmodifiableListView(_books);

  UnmodifiableListView<Book> get unreadBooks =>
      UnmodifiableListView(_books.where((book) => !book.isRead));

  UnmodifiableListView<Book> get readBooks =>
      UnmodifiableListView(_books.where((book) => !book.isRead));

  void addBook(Book book) {
    _books.add(book);
    notifyListeners();
  }

  void markRead(Book book) {
    final bookIndex = _books.indexOf(book);
    _books[bookIndex].toggleRead();
    notifyListeners();
  }

  void deleteBook(Book book) {
    _books.remove(book);
    notifyListeners();
  }
}
