import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Folder_Page extends StatefulWidget {
  @override
  _Folder_PageState createState() => _Folder_PageState();
}

class _Folder_PageState extends State<Folder_Page> {
  final String foldertitle = '폴더';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoNavigationBar(
        middle: Text('폴더', style: TextStyle(fontSize: 20, color: Colors.green)),
        trailing: Text('편집', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
      ),
    );
  }
}
