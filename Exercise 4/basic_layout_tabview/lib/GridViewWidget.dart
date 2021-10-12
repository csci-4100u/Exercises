import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        ColorfulBox(Colors.red),
        ColorfulBox(Colors.blue),
        ColorfulBox(Colors.orange),
        ColorfulBox(Colors.black),
        ColorfulBox(Colors.amber),
        ColorfulBox(Colors.green),
        ColorfulBox(Colors.brown),
        ColorfulBox(Colors.cyan),
        ColorfulBox(Colors.deepPurple),
        ColorfulBox(Colors.lime),
        ColorfulBox(Colors.red),
        ColorfulBox(Colors.blue),
        ColorfulBox(Colors.orange),
        ColorfulBox(Colors.black),
        ColorfulBox(Colors.amber),
        ColorfulBox(Colors.green),
        ColorfulBox(Colors.brown),
        ColorfulBox(Colors.cyan),
      ],
    );
  }
}

class ColorfulBox extends StatelessWidget {
  ColorfulBox(this.color) : super();

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
