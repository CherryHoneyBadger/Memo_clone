import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BottomNavigationBar CustomBottomNavBar(BuildContext context, int selectedItem) {
  return BottomNavigationBar(
    currentIndex: selectedItem,
    type: BottomNavigationBarType.fixed,
    onTap: (value) {},
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.delete,
          color: Colors.green,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.check_circle_outline,
          color: Colors.green,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.add_circle_outline,
          color: Colors.green,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.brush,
          color: Colors.green,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icon(Icons.add),
          color: Colors.green,
        ),
      )
    ],
  );
}

/*
TextField(
        //Textfield의 글자수와 길이를 null하고 Textfield의 아무곳이나 누루면 시작지점으로 포커스가 된다.
        expands: true,
        maxLines: null,
        minLines: null,
        cursorColor: Colors.green,
        //Textfield의 장식하는 기능 힌트 글과 컬러등등의 기능
        decoration: InputDecoration(
          hintText: '내용을 입력해 주세여\n\n\n',
          border: InputBorder.none,
          */
