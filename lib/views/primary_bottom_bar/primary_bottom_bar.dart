import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../actions/ui_actions.dart';

import 'news_tab.dart';
import 'handbook_tab.dart';
import 'pharma_tab.dart';
import 'phone_tab.dart';
import 'settings_tab.dart';

class PrimaryBottomBar extends StatelessWidget {
  PrimaryBottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _ViewModel>(
        distinct: true,
        converter: _ViewModel.fromStore,
        builder: (context, vm) => BottomNavigationBar(
              items: [
                NewsTab(),
                HandbookTab(),
                PharmaTab(),
                PhoneTab(),
                SettingsTab(),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: vm.activeIndex,
              onTap: vm.onTabSelected,
            ),
      );
}

class _ViewModel {
  final int activeIndex;
  final Function(int) onTabSelected;

  _ViewModel({
    @required this.activeIndex,
    @required this.onTabSelected,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        activeIndex: store.state.ui.currentViewportIndex,
        onTabSelected: (index) {
          store.dispatch(SetViewport(index: index));
        });
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          activeIndex == other.activeIndex;

  @override
  int get hashCode => activeIndex.hashCode;
}
