import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          title: Center(
            child: Text(
              "Discovery",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MainMenuItem([
                './images/hotel.png',
                './images/resturant.png',
                './images/food.png'
              ], [
                'Hotels',
                'Cafe',
                'Fast Food'
              ], [
                '42',
                '12',
                '30'
              ]),
              MainMenuItem([
                './images/map.png',
                './images/parking.png',
                './images/bus.png'
              ], [
                'Trekking',
                'Parking',
                'Bus Stops'
              ], [
                '2',
                '25',
                '18'
              ])
            ],
          ),
        ));
  }
}

class MainMenuItem extends StatelessWidget {
  MainMenuItem(this.imageSources, this.categories, this.counts) : super();
  final List<String> imageSources;
  final List<String> categories;
  final List<String> counts;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BoxItems(imageSources[0], categories[0], counts[0]),
        BoxItems(imageSources[1], categories[1], counts[1]),
        BoxItems(imageSources[2], categories[2], counts[2])
      ],
    );
  }
}

class BoxItems extends StatelessWidget {
  BoxItems(this.imageSource, this.category, this.count) : super();

  final String imageSource;
  final String category;
  final String count;

  @override
  Widget build(BuildContext context) {
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
        height: 150,
        width: 150,
        child: Content(imageSource, category, count));
  }
}

class Content extends StatelessWidget {
  Content(this.imageSource, this.category, this.count) : super();

  final String imageSource;
  final String category;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageSource,
          height: 50,
          width: 50,
        ),
        SizedBox(height: 15),
        Text(
          category,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 8),
        Text(
          count,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
