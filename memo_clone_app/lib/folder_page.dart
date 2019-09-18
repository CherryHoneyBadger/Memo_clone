import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Folder_Page extends StatefulWidget {
  @override
  _Folder_PageState createState() => _Folder_PageState();
}

class _Folder_PageState extends State<Folder_Page> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '폴더',
                        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                      ListView(
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            height: 20,
                            color: Colors.green,
                            child: const Text('메모'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add_circle,
              color: Colors.green,
              size: 50,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
