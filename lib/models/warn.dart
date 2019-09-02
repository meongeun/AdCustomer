class Warn {
  int adId, customerUserId;
  String content;

  Warn.fromJson(Map map) {
    this.adId = map['adId'];
    this.customerUserId = map['customeruser_id'];
    this.content = map['content'];

  }
}