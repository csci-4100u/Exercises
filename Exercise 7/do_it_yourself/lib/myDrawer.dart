import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle drawerItemTextStyle =
        TextStyle(fontSize: 18, color: Colors.black);

    //Drawer Header Content Area
    Widget _drawerHeader = Container(
        height: 200,
        child: DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.amberAccent,
              Colors.amber,
            ])),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://addicted2success.com/wp-content/uploads/2017/11/10-Things-We-Can-Learn-From-the-Incredible-Steve-Jobs.jpg'),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Razi Iqbal",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "razi@iqbal.com",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )));

    return Drawer(
        child: ListView(
      children: [
        _drawerHeader,
        ListTile(
          leading: Icon(
            Icons.person,
            size: 30,
          ),
          title: Text("My Dream 11", style: drawerItemTextStyle),
        ),
        ListTile(
          leading: Icon(
            Icons.add,
            size: 30,
          ),
          title: Text("Add a Player", style: drawerItemTextStyle),
        ),
        ListTile(
          leading: Icon(
            Icons.search,
            size: 30,
          ),
          title: Text("Search a Player", style: drawerItemTextStyle),
        ),
        ListTile(
          leading: Icon(
            Icons.share,
            size: 30,
          ),
          title: Text("Share my Team", style: drawerItemTextStyle),
        ),
        Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.edit,
            size: 30,
          ),
          title: Text("Edit Profile", style: drawerItemTextStyle),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30,
          ),
          title: Text("Change Password", style: drawerItemTextStyle),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            size: 30,
          ),
          title: Text("Sign Out", style: drawerItemTextStyle),
        ),
      ],
    ));
  }
}
