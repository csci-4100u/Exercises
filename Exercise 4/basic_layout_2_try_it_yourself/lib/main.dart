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
    // List View for holding the column-wise boxes
    final Widget gridViewBoxHolder = GridView.count(
      crossAxisSpacing: 50,
      mainAxisSpacing: 50,
      padding: EdgeInsets.only(top: 60, left: 35, right: 35),
      crossAxisCount: 2,
      children: [
        BoxBuilder('./images/hotel.png', 'Hotel', '42'),
        BoxBuilder('./images/map.png', 'Nearby', '13'),
        BoxBuilder('./images/food.png', 'Food', '20'),
        BoxBuilder('./images/parking.png', 'Parking', '10'),
        BoxBuilder('./images/resturant.png', 'Resturant', '25'),
        BoxBuilder('./images/bus.png', 'Bus Stops', '5'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Discovery",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: gridViewBoxHolder,
    );
  }
}

// Box Holder for Content
class BoxBuilder extends StatelessWidget {
  BoxBuilder(this.imageSrc, this.category, this.count);
  final String imageSrc;
  final String category;
  final String count;

  @override
  Widget build(BuildContext context) {
    // Box Holder for Content
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageSrc,
            height: 70,
            width: 70,
          ),
          Text(
            category,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            count,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
