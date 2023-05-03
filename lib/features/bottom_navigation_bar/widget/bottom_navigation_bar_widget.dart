import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

import '../controller/bottom_navigation_controller.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
        final bottomNavigationController =
            Provider.of<BottomNavigationController>(context);
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
          currentIndex: bottomNavigationController.currentTab,
          backgroundColor: WeincodeColorsFoundation.primaryColor,
          iconSize: 22,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: WeincodeColorsFoundation.primaryColor300,
          unselectedItemColor: WeincodeColorsFoundation.unselectedItemColor,
          onTap: (index){
            bottomNavigationController.setTab(index);
          },
        );
      });
  }
}
