//첨부파일 페이지

import 'package:flutter/material.dart';

class Attachment_page extends StatefulWidget {
  @override
  _Attachment_pageState createState() => _Attachment_pageState();
}

class _Attachment_pageState extends State<Attachment_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '첨부파일',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                '완료',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: Center(
          child: Column(children: <Widget>[
            Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Column(children: <Widget>[
                      Center(
                        child: Container(
                          child: Text(
                            '첨부 파일 없음',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            '메모에 추가한 사지느 지도 및 기타 항목이',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: Colors.grey),
                          ),
                        ),
                      )),
                      Center(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Text(
                                '여기에 나타납니다.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              )))),
                    ])))),
          ]),
        ));
  }
}
