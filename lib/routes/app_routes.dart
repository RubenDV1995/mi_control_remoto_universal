import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/devices/page/devices_page.dart';
import 'package:mi_control_remoto_universal/features/home/page/home_page.dart';
import 'package:mi_control_remoto_universal/features/settings/page/settings_page.dart';
import 'package:mi_control_remoto_universal/features/splash/page/splash_page.dart';
import 'package:mi_control_remoto_universal/routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashPage(),
    Routes.home: (context) => const HomePage(),
    Routes.devices: (context) => const DevicesPage(),
    Routes.settings: (context) => const SettingsPage(),
  };
}