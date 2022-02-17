import 'package:flutter/material.dart';
import 'package:mango/pages/addtodo.dart';
import 'package:mango/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AddTodoPage());
  }
}
