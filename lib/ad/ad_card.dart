import 'package:ad_app/Warn/warn_create.dart';
import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  String storeName, menuName;
  int counter, discount;

  AdCard({this.storeName, this.menuName, this.counter, this.discount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Card(
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$storeName',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Text(
                  '$discount',
                  style: TextStyle(
                    fontSize: 100,
                  ),
                ),
                Text(
                  '$menuName',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset('assets/appetizer-bowl-delicious-1640772.jpg',
                    height: 180, width: 300, fit: BoxFit.contain),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Row(children: <Widget>[
                        Icon(Icons.file_download),
                        Text('$counter'),
                      ]),
                      onPressed: () {
                        counter++;
                      },
                    ),
                    FlatButton(
                      child: Icon(Icons.warning),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => WarnCreate()));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
