import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle drawerItemTextStyle = TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Main Menu",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            color: Colors.green[100],
            child: Text(
              "My Profile",
              style: drawerItemTextStyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            color: Colors.green[100],
            child: Text(
              "My Orders",
              style: drawerItemTextStyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            color: Colors.green[100],
            child: Text(
              "Completed Orders",
              style: drawerItemTextStyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            color: Colors.green[100],
            child: Text(
              "Cancelled Orders",
              style: drawerItemTextStyle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            color: Colors.green[100],
            child: Text(
              "Sign Out",
              style: drawerItemTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
