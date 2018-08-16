import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../models/app_state.dart';

import 'handbook_viewport.dart';
import 'news_viewport.dart';
import 'pharma_viewport.dart';
import 'phone_viewport.dart';

class MainViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, int>(
      converter: (store) => store.state.ui.currentViewportIndex,
      builder: (context, index) {
        var viewports = <Widget>[
          NewsViewport(),
          HandbookViewport(),
          PharmaViewport(),
          PhoneViewport(),
        ];

        return viewports[index];
      });
}
