import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bookshelf/providers/book_list_model.dart';
import 'package:bookshelf/models/book.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final bookTitleController = TextEditingController();
  final bookAuthorController = TextEditingController();
  bool completedStatus = false;

  @override
  void dispose() {
    bookTitleController.dispose();
    bookAuthorController.dispose();
    super.dispose();
  }

  void onAdd() {
    final String textVal = bookTitleController.text;
    final String authorValue = "John";
    final bool completed = completedStatus;
    if (textVal.isNotEmpty) {
      final Book book = Book(textVal, authorValue, completed);
      Provider.of<BooksListModel>(context, listen: false).addBook(book);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add book'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    controller: bookTitleController,
                    decoration: InputDecoration(hintText: "Title"),
                  ),
                  TextField(controller: bookAuthorController,
                  decoration: InputDecoration(hintText: "Author"),),
                  CheckboxListTile(
                    value: completedStatus,
                    onChanged: (checked) => setState(() {
                      completedStatus = checked ?? false;
                    }),
                    title: Text('Read already?'),
                  ),
                  ElevatedButton(
                    child: Text('Add'),
                    onPressed: onAdd,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
