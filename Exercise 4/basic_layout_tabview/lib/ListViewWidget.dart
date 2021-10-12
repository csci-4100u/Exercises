import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.amber[600],
          child: Text(
            "Canada",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[600],
          child: Text("USA", style: TextStyle(fontSize: 20)),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey[600],
          child: Text("UK", style: TextStyle(fontSize: 20)),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[600],
          child: Text("Japan", style: TextStyle(fontSize: 20)),
        )
      ],
    );
  }
}
