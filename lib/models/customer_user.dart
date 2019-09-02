class CustomerUser{
  String email, phone, pw, residence, location, image, unique;
  int age, storeId, adId;
  bool gender, alarm;

  CustomerUser.fromJson(Map map) {
    this.email = map['email'];
    this.phone = map['phone'];
    this.pw = map['pw'];
    this.residence = map['residence'];
    this.image = map['image'];

    this.age = map['age'];
    this.storeId = map['store_id'];
    this.adId = map['ad_id'];

    this.gender = map['gender'];
  }
}