import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memo_clone_app/add_member_page.dart';

import 'bottom_nav_bar.dart';

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Add_Member_page()));
            },
          ),
          FlatButton(
              child: Icon(
                Icons.share,
                color: Colors.green,
              ),
              onPressed: () {
                _cupertinosheet();
              })
        ],
      ),
      body: TextField(
        //Textfield의 글자수와 길이를 null하고 Textfield의 아무곳이나 누루면 시작지점으로 포커스가 된다.
        expands: true,
        maxLines: null,
        minLines: null,
        cursorColor: Colors.green,
        //Textfield의 장식하는 기능 힌트 글과 컬러등등의 기능
        decoration: InputDecoration(
          hintText: '내용을 입력해 주세여\n\n\n',
          border: InputBorder.none,
        ),
      ),
      //bottomnavbar은 새로운 파일을 만들어서 바를 구형하고 여기로 불러온다,
      bottomNavigationBar: CustomBottomNavBar(context, 1),
    );
  }

  void _cupertinosheet() {
    //쿠퍼티노 디자인의 bottomsheet를 객체로 만들어 불러온다.
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
          title: const Text('Airdrop 공유 옵션과 메모를 변경할수 있는 메뉴'),
          message: const Text('메신저와 메모의 옵션'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: const Text('사용자를 추가할 수 있는 메신저 모음'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('메모의 동작의 모음(메모 찾기, 메모 잠금 등의 기능'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            child: const Text(
              '취소',
              style: TextStyle(color: Colors.green),
            ),
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context, '취소');
            },
          )),
    );
  }
}

//BottomNavBar을 이용해서 메모장의 여러 기능을 구현 및 메모 저장 기능 구현