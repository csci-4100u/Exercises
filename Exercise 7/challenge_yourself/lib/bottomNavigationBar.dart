import 'package:flutter/material.dart';
import 'addAPlayer.dart';

class MyBottomNavigationBar extends StatefulWidget {
  var scaffoldKey;
  MyBottomNavigationBar({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "My Dream 11",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "Add a Player",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share),
          label: "Share my Team",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "Menu",
          backgroundColor: Colors.amber,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      iconSize: 30,
      selectedItemColor: Colors.brown,
      currentIndex: _index,
      onTap: (int index) {
        print(index);
        if (index == 0) {}
        if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainContentArea()));
        }
        if (index == 3) {
          widget.scaffoldKey.currentState!.openEndDrawer();
        }

        setState(() {
          _index = index;
        });
      },
    );
  }
}
