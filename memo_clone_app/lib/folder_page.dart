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
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('폴더',
              style: TextStyle(
                  fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
          trailing: Text('편집',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    ));
  }
}
