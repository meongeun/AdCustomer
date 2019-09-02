import 'package:ad_app/user/user_appbar.dart';
import 'package:flutter/material.dart';

class UserRead extends StatefulWidget {
  @override
  _UserReadState createState() => _UserReadState();
}

class _UserReadState extends State<UserRead> {
  bool value5 = true;
  bool value4 = false;

  void onChangedValue(bool value) {
    setState(() {
      value4 = value;
    });
  }

  void onChangedValue5(bool value) {
    setState(() {
      value5 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          UserAppBar(),
          //Switch(value: value4, onChanged: onChangedValue),
          SwitchListTile(
            value: value5,
            onChanged: onChangedValue5,
            activeColor: Colors.deepOrange,
            secondary: Icon(Icons.alarm),
            title: Text('알림', style: TextStyle(fontSize: 20.0),),
            subtitle: Text('팝업 설정을 해주세요', style: TextStyle(fontSize: 14),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            FlatButton(child: Text('쿠폰함', textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),onPressed: () {}),
            FlatButton(child: Text('즐겨찾기한 매장', textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),onPressed: () {},),
            FlatButton(child: Text('거주지 변경',textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),onPressed: () {},),
          ],),
        ],
      )
    );
  }
}
