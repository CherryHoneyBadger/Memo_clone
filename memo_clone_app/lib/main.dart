import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

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
        home: folder_page());
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
      appBar: AppBar(actions: <Widget>[
        
      ],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '폴더',
          style: TextStyle(
              fontSize: 35, fontFamily: "Roboto", fontWeight: FontWeight.w700),
        ),

      ),
      
      
      floatingActionButton: FloatingActionButton(
        //버튼을 누를시 새로운 폴더를 생성
        onPressed: () {},
        child: Icon(Icons.create_new_folder),
      ),
    );
  }
}
