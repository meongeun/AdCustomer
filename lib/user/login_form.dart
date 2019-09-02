import 'package:flutter/material.dart';
import 'package:ad_app/user/user_create_residence.dart';

void main() => runApp(AdCustomer());

class AdCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'disCount Down',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.redAccent,
        secondaryHeaderColor: Colors.amber,

      ),
      home: AdCutomerPage(),
    );
  }
}

class AdCutomerPage extends StatefulWidget {
  @override
  _AdCutomerPageState createState() => _AdCutomerPageState();
}

class _AdCutomerPageState extends State<AdCutomerPage> {
  void navigate() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => UserCreateResidence()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 500),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Text(
              '로그인',
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
              child: Text('카카오톡 로그인'),
              onPressed: navigate,
            ),
          ],
        ),
      ),
    ));
  }
}
