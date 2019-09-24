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
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    //버튼을 누를시 메모를 생성하거나 그림판등을 생성할수 있다.
  }
}
