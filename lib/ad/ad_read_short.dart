
import 'package:ad_app/user/user_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ad_card.dart';
import 'ad_read_long.dart';
import 'package:ad_app/user/menu_items.dart';

class AdReadShort extends StatefulWidget {
  @override
  _AdReadShortState createState() => _AdReadShortState();
}

class _AdReadShortState extends State<AdReadShort> {
  String storeName = '맛있파스타';
  int discount = 59;
  String menuName = '로제파스타';
  int counter = 78;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[UserAppBar(),
        CarouselSlider(
          autoPlay: false,
          height: 615.0,
          items: <Widget>[
            AdCard(storeName:storeName, menuName: menuName, counter: counter, discount: discount )
          ],
        ),
      ],
    );

  }
}
