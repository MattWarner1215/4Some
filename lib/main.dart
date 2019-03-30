import 'package:flutter/material.dart';
import 'package:four_some/services/authentication.dart';
import 'package:four_some/pages/root_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '4some',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
