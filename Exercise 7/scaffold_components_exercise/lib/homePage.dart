import 'package:flutter/material.dart';
import 'package:scaffold_components_exercise/bottomNavigationBar.dart';
import 'package:scaffold_components_exercise/myAppBarForMainPage.dart';
import 'package:scaffold_components_exercise/myDrawer.dart';

class MyMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listViewHolder = ListView(
      children: [
        RowContent(
            "1",
            "https://resources.pulse.icc-cricket.com/players/210/440.png",
            "Kane Williamson",
            "4.5"),
        RowContent(
            "2",
            "https://resources.pulse.icc-cricket.com/players/210/164.png",
            "Virat Kohli",
            "4"),
        RowContent(
            "3",
            "https://resources.pulse.icc-cricket.com/players/210/2759.png",
            "Babar Azam",
            "4"),
        RowContent(
            "4",
            "https://resources.pulse.icc-cricket.com/players/210/887.png",
            "Joe Root",
            "4.5"),
        RowContent(
            "5",
            "https://resources.pulse.icc-cricket.com/players/210/201.png",
            "Shakib Al Hasan",
            "4"),
        RowContent(
            "6",
            "https://resources.pulse.icc-cricket.com/players/210/1075.png",
            "Jason Holder",
            "3.5"),
        RowContent(
            "7",
            "https://resources.pulse.icc-cricket.com/players/210/506.png",
            "Johny Bairstow",
            "3.5"),
        RowContent(
            "8",
            "https://resources.pulse.icc-cricket.com/players/210/2885.png",
            "Rashid Khan",
            "4.5"),
        RowContent(
            "9",
            "https://resources.pulse.icc-cricket.com/players/210/490.png",
            "Mitchel Starc",
            "4.5"),
        RowContent(
            "10",
            "https://resources.pulse.icc-cricket.com/players/210/4530.png",
            "Shaheen Afridi",
            "4"),
        RowContent(
            "11",
            "https://resources.pulse.icc-cricket.com/players/210/969.png",
            "Trent Boult",
            "4.5"),
      ],
    );

    return Scaffold(
      appBar: MyAppbar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              color: Colors.amber,
              child: Row(
                children: [
                  Text(
                    "Razi",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://addicted2success.com/wp-content/uploads/2017/11/10-Things-We-Can-Learn-From-the-Incredible-Steve-Jobs.jpg'),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  Spacer(),
                  Text(
                    "980 pts",
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
      ),
      //drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
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
            backgroundImage: NetworkImage(imageSrc),
            backgroundColor: Colors.white,
            radius: 35,
          ));
    }

    //Set Name
    Widget setName(String name) {
      return Container(
          width: 220,
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ));
    }

    //Set Serial
    Widget setSerial(String serial) {
      return Container(
          width: 40,
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            serial,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ));
    }

    //Set Score
    Widget setScore(String score) {
      return Container(
          padding: EdgeInsets.only(top: 10, right: 10),
          child: Text(
            score,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        setSerial(serial),
        SizedBox(
          width: 20,
        ),
        setAvatar(imageSrc),
        SizedBox(
          width: 10,
        ),
        setName(
          name,
        ),
        SizedBox(
          width: 5,
        ),
        setScore(score),
      ],
    );
  }
}
