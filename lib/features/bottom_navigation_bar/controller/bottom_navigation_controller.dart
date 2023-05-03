import 'package:flutter/foundation.dart';

class BottomNavigationController extends ChangeNotifier {
  int _currentTab = 0;
  bool _mounted = true;

  int get currentTab => _currentTab;
  bool get mounted => _mounted;

  void setTab(int index) {
    _currentTab = index;
    notifyListeners();
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
