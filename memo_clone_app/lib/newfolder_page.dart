import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class newFolder_Page extends StatefulWidget {
  @override
  _newFolder_PageState createState() => _newFolder_PageState();
}

class _newFolder_PageState extends State<newFolder_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'new Sample Folder',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.green,
              onPressed: () {
                //편집 버튼을 누루면 메모 폴더안의 내용을 편집할 수 있는 기능
              },
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: 1,
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
                      onTap: () {}));
            }),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.green,
              size: 40,
            ),
            onPressed: () {
              //버튼을 누를시 메모를 생성하거나 그림판등을 생성할수 있다.
            }));
  }
}
