import 'package:ad_app/models/ad.dart';
import 'package:ad_app/user/user_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

import 'ad_card.dart';

class AdReadLong extends StatefulWidget {
  @override
  _AdReadLongState createState() => _AdReadLongState();
}

class _AdReadLongState extends State<AdReadLong> {
  String storeName = '맛있파스타';
  int discount = 59;
  String menuName = '로제파스타';
  int counter = 78;


  TextEditingController editingController = TextEditingController();

  final List<Ad> _Ads = [
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

  void filterSearchResults(String query) {
    List<Ad> adSearchList = List<Ad>();
    adSearchList.addAll(_Ads);
    if (query.isNotEmpty) {
      List<Ad> adListData = List<Ad>();
      adSearchList.forEach((ads) {
        if (ads.name.contains(query)) {
          adListData.add(ads);
        }
      });
      setState(() {
        _Ads.clear();
        _Ads.addAll(adListData);
      });
      return;
    } else {
      setState(() {
        _Ads.clear();
        _Ads.addAll(_Ads);
      });
    }
  }

  void _addNewReview(String nStore, String nContent, double nRate) {
    final newRv = Ad(
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
        full: true);
    setState(() {
      _Ads.add(newRv);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          UserAppBar(),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text('기간 검색'),
              SizedBox(
                width: 10,
              ),
              MaterialButton(
                onPressed: () async {
                  final List<DateTime> picked =
                      await DateRagePicker.showDatePicker(
                          context: context,
                          initialFirstDate: new DateTime.now(),
                          initialLastDate:
                              (new DateTime.now()).add(new Duration(days: 7)),
                          firstDate: new DateTime(2015),
                          lastDate: new DateTime(2020));
                  if (picked != null && picked.length == 2) {
                    print(picked);
                  }
                },
                child: Icon(Icons.calendar_today),
              ),


            ],
          ),
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
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
          ),
          CarouselSlider(
            autoPlay: false,
            height: 615.0,
            items: <Widget>[
              AdCard(
                  storeName: storeName,
                  menuName: menuName,
                  counter: counter,
                  discount: discount),
            ],
          ),
        ],
      ),
    );
  }
}
