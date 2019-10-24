import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_memo_clone/newfolder_page.dart';

class Folder_Page extends StatefulWidget {
  @override
  _Folder_PageState createState() => _Folder_PageState();
}

class _Folder_PageState extends State<Folder_Page> {
  final List<String> entries = <String>['A', 'B', 'C'];

  Color _color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '폴더',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions: <Widget>[
          //편집 버튼
          FlatButton(
            child: Text(
              '편집',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ],
      ),
      //폴더 목록을 표시하는 코드
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int i) {
            if (i.isOdd) {
              return new Divider(
                color: Colors.black,
              );
            }
            return Card(
              child: ListTile(
                  title: Text('메모'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    //폴더를 선택하면 폴더 화면으로 이동한다.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newFolder_Page()),
                    );
                  }),
            );
          }),
      //새로운 폴더를 추가하는 버튼
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.green,
            size: 40,
          ),
          onPressed: () {
            //버튼을 누를시 팝업이 뜨면서 폴더의 이름 입력하고 폴더를 생성한다.
            showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Center(
                        child: Text(
                      '새로운 폴더',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    content: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '폴더 이름',
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          '확인',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text(
                          '취소',
                          style: TextStyle(color: _color),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                });
          }),
    );
  }
}
