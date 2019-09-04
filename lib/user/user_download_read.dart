import 'package:ad_app/models/ad.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserDownloadList extends StatefulWidget {
  @override
  _UserDownloadListState createState() => _UserDownloadListState();
}

class _UserDownloadListState extends State<UserDownloadList> {

  List<Ad> ads= [
    Ad(
        kind: "할인율다운",
        name: "맛있파스타",
        menu: "로제파스타",
        repeat: "매주",
        price: 7800,
        startDiscount: 80,
        timeGap: 1,
        discountGap: 5,
        storeId: 1,
        storeUserId: 1,
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        startDay: DateTime.now(),
        endDay: DateTime.now(),
        full: true),
    Ad(
        kind: "할인율다운",
        name: "맛있파스타",
        menu: "로제파스타",
        repeat: "매주",
        price: 7800,
        startDiscount: 80,
        timeGap: 1,
        discountGap: 5,
        storeId: 1,
        storeUserId: 1,
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        startDay: DateTime.now(),
        endDay: DateTime.now(),
        full: true),
    Ad(
        kind: "할인율다운",
        name: "맛있파스타",
        menu: "로제파스타",
        repeat: "매주",
        price: 7800,
        startDiscount: 80,
        timeGap: 1,
        discountGap: 5,
        storeId: 1,
        storeUserId: 1,
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        startDay: DateTime.now(),
        endDay: DateTime.now(),
        full: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 500,
      child: ads.isEmpty
          ? Text('쿠폰을 다운받아보세요')
          : ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey, width: 2),
                  ),
                  child: Image.asset(
                      'assets/burrito-chicken-close-up.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ads[index].name,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ads[index].kind,
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        '${ads[index].price.toString()}원',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        DateFormat.yMMMd().format(
                          ads[index].startDay
                        ),
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      IconButton(icon: Icon(Icons.delete),onPressed: () {},),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: ads.length,
      ),
    );
  }
}
