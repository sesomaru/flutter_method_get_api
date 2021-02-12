import 'package:flutter/material.dart';
import 'package:flutter_application_1/post_result_model.dart';
import 'package:flutter_application_1/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learning API"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text((user != null) ? user.id + '|' + user.name : "Tidak ada data"),
            RaisedButton(
              onPressed: () {
                User.connectToAPI('7').then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("Get"),
            ),
          ],
        )),
      ),
    );
  }
}
