import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewReview extends StatefulWidget {
  final Function addRv;

  NewReview(this.addRv);

  @override
  _NewReviewState createState() => _NewReviewState();
}

class _NewReviewState extends State<NewReview> {
  final contentController = TextEditingController();
  final storeController = TextEditingController();
  String content;
  String storeName="포포나무 이대점";
  double _rate;

  void submitData(String storeName, double rate) {
    final enteredStore = storeName;
    final enteredRate = rate;
    final enteredContent = contentController.text;

    if (enteredStore.isEmpty || enteredContent.isEmpty || enteredRate ==null) {
      return;
    }

    widget.addRv(
      enteredStore,
      enteredContent,
    );

    Navigator.of(context).pop();  //close the top page
    //context는 제대로 navigate하기 위해 필요한 속성
    //context는 state class의 속성
  }

  void _startAddNewReview(BuildContext ctx) {

  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        //filterSearchResults(value);
                      },
                      controller: storeController,
                      decoration: InputDecoration(
                          labelText: "검색",
                          hintText: "검색어를 입력하세요",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(child: Container(color: Colors.green, height: 300,width: 300,)),
            SizedBox(height: 10,),
            Text('$storeName'),
            FlutterRatingBar(
              initialRating: 0,
              fillColor: Theme.of(context).secondaryHeaderColor,
              borderColor: Theme.of(context).secondaryHeaderColor.withAlpha(50),
              allowHalfRating: true,
              onRatingUpdate: (rating) {
                setState(() {
                  _rate = rating;
                });
              },
    ),
            TextField(
              decoration: InputDecoration(labelText: '내용',),
              maxLines: 5,
              controller: contentController,
              onSubmitted: (_) => submitData,
              onChanged: (value) {
                content = value;
              },
            ),
            RaisedButton(
              child: Text('저장', style: TextStyle(fontSize: 15),),
              color: Theme.of(context).secondaryHeaderColor,
              onPressed: () {
                submitData(storeName, _rate);
              },
            )
          ],
        ),
      ),
    );
  }
}
