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
        automaticallyImplyLeading: false,
        //취소 글자의 버튼 만들기
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
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
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(
                          child: Text(
                        '다른 사람을 이 메모에 초대하면 모든 사람이',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                      Center(
                          child: Text('최근 변경 사항을 볼 수 있습니다.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Image.network(
                    //이미지를 인터넷에서 불러오고 사이즈를 변경한다.
                'https://macinjune.com/wp-content/uploads/2017/08/notesIcons-300x276.png',
                width: 150.0,
                height: 150.0,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        '(메모의 제목)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      )),
                      Center(
                          child: Text(
                        '사용자의 이름과 이메일',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
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
            ),
            //사용자를 추가하기 위한 메신저 어플 정렬
            Container(
              child: Text(
                '사용자가 초대한 사람이 변경할 수 있습니다.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
