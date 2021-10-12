import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: ScaffoldBody(),
    );
  }
}

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Please follow the links below to contact us...",
            style: TextStyle(color: Colors.blue, fontSize: 18)),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Call",
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Email",
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Share",
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
