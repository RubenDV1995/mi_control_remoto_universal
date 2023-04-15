import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';
import 'package:mi_control_remoto_universal/features/bottom_navigation_bar/controller/bottom_navigation_controller.dart';
import 'package:unicons/unicons.dart';

class BottomNavigationBarWidget extends ConsumerStatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget
    extends ConsumerState<BottomNavigationBarWidget> {
  void _onItemTapped(int index) {
    ref.read(bottomNavigationControllerProvider.notifier).setTab(index);
  }

  int _currentTab() {
    int currentTab =
        ref.read(bottomNavigationControllerProvider.notifier).currentTab;
    return currentTab;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            UniconsLine.tv_retro,
            size: 28,
          ),
          label: 'Remote_Control',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            UniconsLine.apps,
            size: 28,
          ),
          label: 'Models',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            UniconsLine.setting,
            size: 28,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: _currentTab(),
      backgroundColor: WeincodeColorsFoundation.infoBgColor,
      iconSize: 22,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: WeincodeColorsFoundation.colorWhite,
      unselectedItemColor: WeincodeColorsFoundation.cardCircularBgColor,
      onTap: _onItemTapped,
    );
  }
}
