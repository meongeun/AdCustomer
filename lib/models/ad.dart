import 'package:flutter/foundation.dart';

class Ad {
  String kind, name, menu, repeat;
  int price, startDiscount, timeGap, discountGap, startNum, plusOne, plusTwo, storeId, storeUserId;
  DateTime startTime, endTime, startDay, endDay;
  bool full;


  Ad({@required this.kind, @required this.name, @required this.menu, @required this.repeat, @required this.price,
  @required this.startDiscount, this.timeGap, this.discountGap, this.startNum,
      this.plusOne, this.plusTwo, @required this.storeId, @required this.storeUserId,
  @required this.startTime, @required this.endTime, @required this.startDay, @required this.endDay, @required this.full});

  Ad.fromJson(Map map) {
    this.kind = map['kind'];
    this.name = map['name'];
    this.menu = map['menu'];
    this.repeat = map['repeat'];

    this.price = map['price'];
    this.startDiscount = map['startdiscount'];
    this.timeGap = map['timegap'];
    this.discountGap = map['discountgap'];
    this.startNum = map['startnum'];
    this.plusOne = map['plusone'];
    this.plusTwo = map['plustwo'];
    this.storeId = map['store_id'];
    this.storeUserId = map['storeuser_id'];

    this.startTime = map['starttime'];
    this.endTime = map['endtime'];
    this.startDay = map['startday'];
    this.endDay = map['endday'];

    this.full = map['full'];
  }
}