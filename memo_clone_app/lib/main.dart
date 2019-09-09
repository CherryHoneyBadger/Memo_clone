import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: folder_page()
    );
  }
}

class folder_page extends StatefulWidget {
  @override
  _folder_pageState createState() => _folder_pageState();
}

class _folder_pageState extends State<folder_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    )
      
    );
  }
}