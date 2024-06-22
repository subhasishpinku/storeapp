import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setTabIndex(int index) {
    _currentIndex = index;

    notifyListeners();
  }
}
