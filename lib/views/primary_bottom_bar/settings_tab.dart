import 'package:flutter/material.dart';

class SettingsTab extends BottomNavigationBarItem {
  SettingsTab()
      : super(
          title: Text("Settings"),
          icon: Icon(Icons.settings),
        );
}
