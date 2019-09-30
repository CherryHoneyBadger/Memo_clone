import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basic_Memo_Page extends StatefulWidget {
  @override
  _Basic_Memo_PageState createState() => _Basic_Memo_PageState();
}

class _Basic_Memo_PageState extends State<Basic_Memo_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '메모',
          style: TextStyle(color: Colors.green),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.account_circle,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Icon(
              Icons.share,
              color: Colors.green,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: TextField(
        
        decoration: InputDecoration(
          border: InputBorder.none,
          focusColor: Colors.green,
        ),
      ),
      //bottomnavbar은 새로운 파일을 만들어서 바를 구형하고 여기로 불러온다,
    );
  }
}
