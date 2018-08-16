import 'package:flutter/material.dart';

import 'primary_top_bar/primary_top_bar.dart';
import 'main_viewport/main_viewport.dart';
import 'primary_bottom_bar/primary_bottom_bar.dart';

class BaseContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PrimaryTopBar(),
        body: MainViewport(),
        bottomNavigationBar: PrimaryBottomBar(),
      );
}
