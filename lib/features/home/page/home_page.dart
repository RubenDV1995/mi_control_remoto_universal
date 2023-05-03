import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/bottom_navigation_bar/controller/bottom_navigation_controller.dart';
import 'package:mi_control_remoto_universal/features/bottom_navigation_bar/widget/bottom_navigation_bar_widget.dart';
import 'package:mi_control_remoto_universal/features/devices/page/devices_page.dart';
import 'package:mi_control_remoto_universal/features/settings/page/settings_page.dart';
import 'package:provider/provider.dart';

import '../../remote_control/page/main/main_remote_control_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationController>(
      create: (BuildContext context) {
        return BottomNavigationController();
      },
      child: const SafeArea(
        child: Scaffold(
          body: MainContent(),
          bottomNavigationBar: BottomNavigationBarWidget(),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final controllerProvider =
        Provider.of<BottomNavigationController>(context);
        if (controllerProvider.currentTab == 2) {
          return const SettingsPage();
        }
        if (controllerProvider.currentTab == 1) {
          return const DevicesPage();
        }
        return const MainRemoteControlPage();
      },
    );
  }
}



