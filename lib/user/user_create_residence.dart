import 'package:flutter/material.dart';
import 'package:ad_app/ad/ad_read_short.dart';


class UserCreateResidence extends StatefulWidget {
  @override
  _UserCreateResidenceState createState() => _UserCreateResidenceState();
}

class _UserCreateResidenceState extends State<UserCreateResidence> {
  void next() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdReadShort()));
  }

  String dropdownValueCity ="서울특별시";
  String dropdownValueLocal = "동작구";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('현재 거주지가 어떻게 되십니까?', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    DropdownButton<String>(
                      value: dropdownValueCity,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueCity = newValue;
                        });
                      },
                      items: <String>[
                        '서울특별시',
                        '부산광역시',
                        '인천광역시',
                        '광주광역시',
                        '대구광역시',
                        '대전광역시',
                        '을산광역시'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    DropdownButton<String>(
                      value: dropdownValueLocal,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueLocal = newValue;
                        });
                      },
                      items: <String>['동작구', '은평구', '서대문구', '관악구', '강남구', '영등포구']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    RaisedButton(child: Text('저장'),onPressed: next,)
                  ],
                ),
        ),


      ),
    );
  }
}
