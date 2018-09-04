import 'package:flutter/material.dart';

import 'main_drawer/main_drawer.dart';
import 'main_viewport/main_viewport.dart';
import 'primary_bottom_bar/primary_bottom_bar.dart';
import 'primary_top_bar/primary_top_bar.dart';

import '../services/auth.dart';

class BaseContainer extends StatefulWidget {
  BaseContainer({this.auth});
  final BaseAuth auth;

  State<StatefulWidget> createState() => _BaseContainerState();
}

class _BaseContainerState extends State<BaseContainer> {
  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      print('Logged in as: $userId');
    })
    .catchError( (e) {
      print(e);
      widget.auth.signInAnonymously().then( (userId) {
        print('Logging in as: $userId');
      })
      .catchError( (e) {
        print(e);
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PrimaryTopBar(),
        body: MainViewport(),
        bottomNavigationBar: PrimaryBottomBar(),
        drawer: MainDrawer(),
      );
}
