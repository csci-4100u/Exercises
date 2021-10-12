import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Phones',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iOS vs Android"),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text(
            "Which is your preferred smart phone?",
            style: TextStyle(fontSize: 20),
          ),
          alignment: Alignment.center,
        ),
        Image.network(
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-purple-select-2021?wid=470&hei=556&fmt=png-alpha&.v=1617130317000",
          height: 300,
          width: 300,
        ),
        Image.network(
          "https://m.media-amazon.com/images/I/61KvXevceyL._AC_SL1054_.jpg",
          height: 250,
          width: 250,
        )
      ],
    );
  }
}
