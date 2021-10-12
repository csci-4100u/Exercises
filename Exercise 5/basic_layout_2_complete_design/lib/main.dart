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
    //Route Text and Symbol
    Widget shareTextSymbol = Column(
      children: [
        Icon(
          Icons.share,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "SHARE",
          style: TextStyle(color: Colors.blue),
        )
      ],
    );

    //Route Text and Symbol
    Widget routeTextSymbol = Column(
      children: [
        Icon(
          Icons.near_me,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "ROUTE",
          style: TextStyle(color: Colors.blue),
        )
      ],
    );

    //Call Text and Symbol
    Widget callTextSymbol = Column(
      children: [
        Icon(
          Icons.phone,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "CALL",
          style: TextStyle(color: Colors.blue),
        )
      ],
    );

    //Rating Area
    Widget ratingArea = FavoriteContent();

    //Title Text Area
    Widget titleTextArea = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Oeschinen Lake Campground",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Kandersteg, Switzerland",
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.left,
        ),
      ],
    );
    //Bottom Text Area
    Widget textArea = Container(
        padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
          style: TextStyle(color: Colors.black87),
        ));

    //Icons Area
    Widget iconArea = Container(
        padding: EdgeInsets.only(top: 10.0, left: 2.0, bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [callTextSymbol, routeTextSymbol, shareTextSymbol],
        ));

    //Title Area
    Widget titleArea = Container(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [titleTextArea, ratingArea],
        ));

    // Main content area
    Widget nonImageColumnContent = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [titleArea, iconArea, textArea],
    );
    // Main Column Splitter for splitting image and main content area
    Widget mainColumnSplitter = Column(
      children: [
        Image.asset('./images/lake.jpg'),
        nonImageColumnContent,
      ],
    );

    return Scaffold(
      body: mainColumnSplitter,
    );
  }
}

class FavoriteContent extends StatefulWidget {
  const FavoriteContent({Key? key}) : super(key: key);

  @override
  _FavoriteContentState createState() => _FavoriteContentState();
}

class _FavoriteContentState extends State<FavoriteContent> {
  bool _isFavorite = true;
  int _favCount = 41;
  IconData _favIcon = Icons.favorite;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (_isFavorite) {
                _isFavorite = false;
                _favIcon = Icons.favorite_border;
                _favCount--;
              } else {
                _isFavorite = true;
                _favIcon = Icons.favorite;
                _favCount = 41;
              }
            });
          },
          icon: Icon(_favIcon),
          color: Colors.red,
        ),
        Text("$_favCount"),
      ],
    );
  }
}
