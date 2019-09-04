import 'package:ad_app/models/store.dart';
import 'package:ad_app/user/user_plusstore_list.dart';
import 'package:flutter/material.dart';

class UserPlusstoreRead extends StatefulWidget {
  @override
  _UserPlusstoreReadState createState() => _UserPlusstoreReadState();
}

class _UserPlusstoreReadState extends State<UserPlusstoreRead> {
  List<Store> plusstores = [
    Store(
      storeUserId: 1,
      like: true,
      lat: 37.5555,
      lng: 12.3333,
      name: "맛있파스타",
    ),
    Store(
      storeUserId: 2,
      like: true,
      lat: 37.5888,
      lng: 12.1113,
      name: "마린파스타",
    ),
    Store(
      storeUserId: 3,
      like: true,
      lat: 37.9994,
      lng: 12.8883,
      name: "셰프파스타",
    ),
  ];

  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          height: 54,
          child: TextField(
            onChanged: (value) {
              //filterSearchResults(value);
            },
            controller: editingController,
            decoration: InputDecoration(
                labelText: "검색",
                hintText: "검색어를 입력하세요",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )),
          ),
        ),
        SingleChildScrollView(child: UserPlusstoreList(plusstores)),
      ],
    ));
  }
}
