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
    Widget listViewHolder = ListView(
      children: [
        RowContent("1", "./images/steve_jobs.jpg", "Steve Jobs", "150"),
        RowContent("2", "./images/Bill_Gates.jpg", "Bill Gates", "120"),
        RowContent("3", "./images/Einstein.jpg", "Einstein", "110"),
        RowContent("4", "./images/Jack_Ma.jpg", "Jack Ma", "105"),
        RowContent("5", "./images/Jeff_Bezos.jpg", "Jeff Bezos", "95"),
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Leaderboard",
              style: TextStyle(fontSize: 25),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                color: Colors.deepPurple,
                child: Row(
                  children: [
                    Text(
                      "First",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage: AssetImage('./images/steve_jobs.jpg'),
                      radius: 50,
                    ),
                    Spacer(),
                    Text(
                      "150 pts",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: listViewHolder,
              flex: 7,
            )
          ],
        ));
  }
}

class RowContent extends StatelessWidget {
  RowContent(this.serial, this.imageSrc, this.name, this.score);
  final String serial;
  final String imageSrc;
  final String name;
  final String score;
  @override
  Widget build(BuildContext context) {
    //Set Avatar
    Widget setAvatar(String imageSrc) {
      return Container(
          padding: EdgeInsets.only(top: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage(imageSrc),
            radius: 35,
          ));
    }

    //Set Name
    Widget setName(String name) {
      return Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ));
    }

    //Set Serial
    Widget setSerial(String serial) {
      return Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            serial,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ));
    }

    //Set Score
    Widget setScore(String score) {
      return Container(
          padding: EdgeInsets.only(top: 10, right: 20),
          child: Text(
            score,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        setSerial(serial),
        SizedBox(
          width: 5,
        ),
        setAvatar(imageSrc),
        SizedBox(
          width: 10,
        ),
        setName(
          name,
        ),
        SizedBox(
          width: 20,
        ),
        setScore(score),
      ],
    );
  }
}
