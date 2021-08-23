import 'package:flutter/material.dart';

import 'package:bookshelf/screens/add_book_screen.dart';
import 'package:bookshelf/tabs/all_books.dart';
import 'package:bookshelf/tabs/readed_book.dart';
import 'package:bookshelf/tabs/unreaded_books.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookshelf'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTaskScreen(),
                ),
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Read'),
            Tab(text: 'Unread'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          AllBooksTab(),
          ReadedBooksTab(),
          UnreadedBooksTab(),
        ],
      ),
    );
  }
}