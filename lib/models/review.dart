import 'package:flutter/foundation.dart';
class Review {
  int storeId, customerUserId;
  double rate;
  String content, store;
  DateTime createdAt, updatedAt;

  Review({@required this.rate, @required this.content, this.storeId, this.customerUserId, @required this.store, this.createdAt, this.updatedAt});

  Review.fromJson(Map map) {
    this.storeId = map['store_id'];
    this.customerUserId = map['customeruser_id'];
    this.rate = map['rate'];
    this.content = map['content'];
    this.createdAt = map['created_at'];
    this.updatedAt = map['updated_at'];
    this.store = map['store'];
  }
}