import 'package:ad_app/models/review.dart';
import 'package:ad_app/review/review_list.dart';
import 'package:ad_app/user/user_appbar.dart';
import 'package:flutter/material.dart';

import 'new_review.dart';


class ReviewRead extends StatefulWidget {


  @override
  _ReviewReadState createState() => _ReviewReadState();
}

class _ReviewReadState extends State<ReviewRead> {
  TextEditingController editingController = TextEditingController();

  final List<Review> _userReviews = [Review(rate:5, content:"맛있어요", store:"포포나무 이대점", createdAt: DateTime.now(), updatedAt:DateTime.now()),
    Review(rate:3, content:"쏘쏘", store:"마린파스타 이대점", createdAt: DateTime.now(), updatedAt:DateTime.now()),
    Review(rate:4, content:"가성비 갑", store:"포포나무 이대점", createdAt: DateTime.now(), updatedAt:DateTime.now())];

  void filterSearchResults(String query) {
    List<Review> reviewSearchList = List<Review>();
    reviewSearchList.addAll(_userReviews);
    if(query.isNotEmpty) {
      List<Review> reviewListData = List<Review>();
      reviewSearchList.forEach((reviews) {
        if(reviews.store.contains(query)) {
          reviewListData.add(reviews);
        }
      });
      setState(() {
        _userReviews.clear();
        _userReviews.addAll(reviewListData);
      });
      return;
    } else {
      setState(() {
        _userReviews.clear();
        _userReviews.addAll(_userReviews);
      });
    }
  }

  void _addNewReview(String nStore, String nContent, double nRate){
    final newRv = Review( store: nStore, content: nContent, rate: nRate, createdAt: DateTime.now());
    setState(() {
      _userReviews.add(newRv);
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        UserAppBar(),
        Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      borderRadius: BorderRadius.circular(25.0)
                    )
                  ),
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(child: ReviewList(_userReviews)),

      ]),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewReview(_addNewReview)));
      }),
    );
  }
}
