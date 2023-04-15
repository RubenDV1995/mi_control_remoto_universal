import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationControllerProvider = StateNotifierProvider<BottomNavigationController, int>((ref) {
  return BottomNavigationController();
});

class BottomNavigationController extends StateNotifier<int> {
  BottomNavigationController() : super(0);

  late int currentTab = 0;

  void setTab(int index){
    if(index == 0) {
      state = 0;
      currentTab = state;
    }
    if(index == 1){
      state = 1;
      currentTab = state;
    }
    if(index == 2){
      state =  2;
      currentTab = state;
    }
  }
}

