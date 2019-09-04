import 'package:ad_app/user/user_read.dart';
import 'package:flutter/material.dart';
import 'package:ad_app/ad/ad_read_short.dart';


class UserCreateResidence extends StatefulWidget {
  String save;


  UserCreateResidence(this.save);

  @override
  _UserCreateResidenceState createState() => _UserCreateResidenceState(save);
}

class _UserCreateResidenceState extends State<UserCreateResidence> {
  void next() {
    if(save=="저장"){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdReadShort()));}
    else if(save =="수정"){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserRead()));
    }

  }

  String location="서울시 서대문구 대현동";
  String save;


  _UserCreateResidenceState(this.save);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('현재 거주지가 어떻게 되십니까?',textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text('$location'),
                      IconButton(icon: Icon(Icons.search),onPressed: () {},),
                    ],),
                    RaisedButton(child: Text('${widget.save}'),onPressed: next,)
                  ],
                ),
        ),


      ),
    );
  }
}
