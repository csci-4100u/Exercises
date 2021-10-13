import 'package:flutter/material.dart';
import 'myAppBarForMainPage.dart';

class MainContentArea extends StatefulWidget {
  @override
  _MainContentAreaState createState() => _MainContentAreaState();
}

class _MainContentAreaState extends State<MainContentArea> {
  List players = ["Virat Kohli", "Joe Root", "Kane Williamson", "Babar Azam"];
  String selectedPlayer = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    selectedPlayer = players[0];
  }

  @override
  Widget build(BuildContext context) {
    //Top card Widget
    Widget topCard = Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 178,
        width: 360,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Player Selection",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Add player name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field cant be null';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        selectedPlayer = value.toString();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            players.add(selectedPlayer);
                            _showSnackBar(context);
                            setState(() {});
                          }
                        },
                        child: Text("Add Player to my List")),
                  ],
                ))
          ],
        ),
      ),
    );

    //Bottom card Widget
    Widget bottomCard = Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 125,
        width: 360,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My League List",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                DropdownButton(
                  isExpanded: true,
                  value: selectedPlayer,
                  items: players.map((player) {
                    print("$player");
                    return DropdownMenuItem(value: player, child: Text(player));
                  }).toList(),
                  onChanged: (value) {
                    selectedPlayer = value.toString();
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );

    //Stats card Widget
    Widget statsCard = Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 190,
        width: 360,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://www.cricbuzz.com/a/img/v1/152x152/i1/c170661/virat-kohli.jpg",
                    ),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$selectedPlayer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Batting Avg.: 52.2", style: TextStyle(fontSize: 16)),
                    SizedBox(width: 40),
                    Text("Bowling Avg.: 32.8", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, left: 10),
                child: Row(
                  children: [
                    Text("Star Rating: 4.5 out of 5",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              )
            ]),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Text("Add a Player")),
        body: Center(
            child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Please select a player name from the list below and click add to add the player in your Fantasy League.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                topCard,
                SizedBox(
                  height: 20,
                ),
                bottomCard,
                SizedBox(
                  height: 20,
                ),
                statsCard,
              ],
            )
          ],
        )));
  }

  //Snackbar for adding player
  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_sharp),
          SizedBox(width: 5),
          Text(
            "$selectedPlayer has been added to your list.",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ],
      ),
      action: SnackBarAction(
          label: "Dismiss",
          textColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          }),
      duration: Duration(seconds: 30),
      backgroundColor: Colors.amber,
      padding: EdgeInsets.only(left: 5),
    ));
  }
}
