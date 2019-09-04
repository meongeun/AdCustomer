import 'package:ad_app/models/store.dart';
import 'package:flutter/material.dart';

class UserPlusstoreList extends StatelessWidget {
  final List<Store> plusstores;

//  List<Store> plusstores = [
//    Store(
//      storeUserId: 1,
//      like: true,
//      lat: 37.5555,
//      lng: 12.3333,
//      name: "맛있파스타",
//    ),
//    Store(
//      storeUserId: 2,
//      like: true,
//      lat: 37.5888,
//      lng: 12.1113,
//      name: "마린파스타",
//    ),
//    Store(
//      storeUserId: 3,
//      like: true,
//      lat: 37.9994,
//      lng: 12.8883,
//      name: "셰프파스타",
//    ),
//  ];


  UserPlusstoreList(this.plusstores);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: plusstores.isEmpty
          ? Text('매장을 추가해주세요')
          : ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        plusstores[index].name,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),

                      RaisedButton(child: Text('삭제', style: TextStyle(fontSize: 15.0),),onPressed: () {},),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: plusstores.length,
      ),
    );
  }
}
