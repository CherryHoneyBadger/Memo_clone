
import 'package:flutter/material.dart';
import 'package:memo_clone_app/folder_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.white,
            primaryColorBrightness: Brightness.light),
        home: main_page());
  }
}

class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return PageView(children: <Widget>[
      Folder_Page(),
    ]);
    
  }
}