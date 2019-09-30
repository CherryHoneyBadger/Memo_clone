import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memo_clone_app/attachment_page.dart';
import 'package:memo_clone_app/basic_memo_page.dart';
import 'package:memo_clone_app/folder_page.dart';

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
          '메모 폴더',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //편집 버튼
          FlatButton(
            child: Text(
              '편집',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.attach_file),
              color: Colors.green,
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Attachment_page()),
                );
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int i) {
            if (i.isOdd) {
              return new Divider(
                color: Colors.black,
              );
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: ListTile(
                      title: Text('메모'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Basic_Memo_Page()));
                      })),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.green,
          size: 40,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Basic_Memo_Page()));
        },
      ),
    );

    //버튼을 누를시 메모를 생성하거나 그림판등을 생성할수 있다.
  }
}
