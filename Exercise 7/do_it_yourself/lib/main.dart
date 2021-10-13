import 'package:do_it_yourself/homePage.dart';
import 'package:flutter/material.dart';

import 'loginFormWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cricket Fantasy League"),
        centerTitle: true,
      ),
      body: MyMainPage(),
      //FormWidget(),
    );
  }
}
