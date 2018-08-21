import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

    @override
    Widget build(BuildContext context) => Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
                DrawerHeader(
                    child: Text("Drawer Header"),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                    ),
                ),
                ListTile(
                    title: Text("Item 1"),
                ),
                ListTile(
                    title: Text("Item 2"),
                ),
            ],
        ),
    );
}
