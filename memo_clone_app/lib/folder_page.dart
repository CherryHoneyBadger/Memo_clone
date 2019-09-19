import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as prefix0;

class Folder_Page extends StatefulWidget {
  @override
  _Folder_PageState createState() => _Folder_PageState();
}

class _Folder_PageState extends State<Folder_Page> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '폴더',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
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
                title: Text('샘플 폴더'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
            })
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.green,
          size: 40,
        ),
        onPressed: () {},
      ),
    );
  }
}
