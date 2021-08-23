
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bookshelf/screens/home_screen.dart';
import 'package:bookshelf/providers/book_list_model.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BooksListModel(),
      child: MaterialApp(
        title: 'Bookshelf',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}