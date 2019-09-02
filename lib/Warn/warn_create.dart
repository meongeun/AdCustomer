import 'package:flutter/material.dart';

class WarnCreate extends StatefulWidget {
  @override
  _WarnCreateState createState() => _WarnCreateState();
}

class _WarnCreateState extends State<WarnCreate> {
  final contentController = TextEditingController();
  String dropdownValueWarn ='음란/선정적 광고';
  String content;

  void submitData() {
    content = contentController.text;

    if (content.isEmpty) {
      return;
    }

    Navigator.of(context).pop();  //close the top page
    //context는 제대로 navigate하기 위해 필요한 속성
    //context는 state class의 속성
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Text('신고 사유', style: TextStyle(fontSize: 15),),
          DropdownButton<String>(
            value: dropdownValueWarn,
            onChanged: (String newValue) {
              setState(() {
                dropdownValueWarn = newValue;
              });
            },
            items: <String>[
              '음란/선정적 광고',
              '비방/비난성 광고',
              '허위 광고',
              '기타'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:Text(value),
              );
            }).toList(),
          ),
          TextField(
            enabled: dropdownValueWarn=="기타"? true: false,
            decoration: InputDecoration(labelText: '내용',),
            maxLines: 5,
            controller: contentController,
            onSubmitted: (_) => submitData,
            onChanged: (value) {
              content = value;
            },
          ),
          RaisedButton(child: Text('신고'), onPressed: () {},)
        ],
      ),
    );
  }
}
