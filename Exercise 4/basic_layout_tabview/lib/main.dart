import 'package:flutter/material.dart';
import 'GridViewWidget.dart';
import 'ListViewWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab View Controller"),
            bottom: TabBar(
              tabs: [
                Tab(text: "List View"),
                Tab(text: "Grid View"),
              ],
            ),
          ),
          body: TabBarView(
            children: [ListViewWidget(), GridViewWidget()],
          ),
        ));
  }
}
