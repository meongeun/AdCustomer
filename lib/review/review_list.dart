import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ad_app/models/review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;

  ReviewList(this.reviews);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: reviews.isEmpty
          ? Text('리뷰를 작성해주세요')
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey, width: 2),
                        ),
                        child: Image.asset(
                            'assets/appetizer-bowl-delicious-1640772.jpg',
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
                              reviews[index].store,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            FlutterRatingBarIndicator(
                              rating: reviews[index].rate,
                              itemCount: 5,
                              itemSize: 12.0,
                              emptyColor: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withAlpha(50),
                            ),
                            Text(
                              reviews[index].content,
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              DateFormat.yMMMd().format(
                                reviews[index].updatedAt != null
                                    ? reviews[index].updatedAt
                                    : reviews[index].createdAt,
                              ),
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: reviews.length,
            ),
    );
  }
}
