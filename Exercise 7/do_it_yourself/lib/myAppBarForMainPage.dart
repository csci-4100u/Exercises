import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppbar({this.title = ''});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.amber,
      height: preferredSize.height,
      child: new Center(
        child: new Text(title),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40.0);
}
