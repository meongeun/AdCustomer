import 'package:ad_app/ad/ad_read_long.dart';
import 'package:ad_app/ad/ad_read_short.dart';
import 'package:ad_app/ad/menu_items.dart';
import 'package:ad_app/review/review_read.dart';
import 'package:ad_app/user/user_modify_image.dart';
import 'package:ad_app/user/user_read.dart';
import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget {
  final String userName = '사용자';

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == MenuItems.adShort) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AdReadShort()));
      } else if (choice == MenuItems.adLong) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AdReadLong()));
      } else if (choice == MenuItems.review) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ReviewRead()));
      }
    }

    return Column(
      children: <Widget>[
        Card(
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 90,
                    height: 60,
                    child: FlatButton(
                      child: Image.asset(
                        'assets/user.png',
                        width: 40,
                        height: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => UserModifyImage()));
                      },
                    )),
                Container(
                    padding: EdgeInsets.only(left: 5),
                    child: FlatButton(
                      child: Text(
                        '$userName',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => UserRead()));
                      },
                    )),
                Container(
                  margin: EdgeInsets.only(left: 150),
                  child: PopupMenuButton<String>(
                      onSelected: choiceAction,
                      itemBuilder: (context) {
                        return MenuItems.choice.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
