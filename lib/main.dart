import 'package:flutter/material.dart';
import 'presentation/listpage/list_page.dart';
import 'presentation/addtodo/add_todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodoHomePage(),
      // home: const AddTodoPage(),
    );
  }
}




