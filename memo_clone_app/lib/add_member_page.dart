import 'package:flutter/material.dart';

class Add_Member_page extends StatefulWidget {
  @override
  _Add_Member_pageState createState() => _Add_Member_pageState();
}

class _Add_Member_pageState extends State<Add_Member_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          '취소',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      //구성원 추가 본문
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            '구성원 추가',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(child: Text('다른 사람을 이 메모에 초대하면 모든 사람이')),
                      Center(child: Text('최근 변경 사항을 볼 수 있습니다.'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                    child: const Image(
                  image: NetworkImage(
                      'https://macinjune.com/wp-content/uploads/2017/08/notesIcons-300x276.png'),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Center(child: Text('(메모의 제목)')),
                      Center(
                          child: Text(
                        '사용자의 이름과 이메일',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Center(child: Text('초대를 보낼 방법 선택, 구현준비')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
