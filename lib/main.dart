import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mi_control_remoto_universal/data/repositories_implementation/settings_repository_impl.dart';
import 'package:mi_control_remoto_universal/domain/repositories/control_repository.dart';
import 'package:mi_control_remoto_universal/domain/repositories/settings_repository.dart';
import 'package:mi_control_remoto_universal/features/settings/controller/settings_controller.dart';
import 'package:mi_control_remoto_universal/routes/app_routes.dart';
import 'package:mi_control_remoto_universal/routes/routes.dart';
import 'package:provider/provider.dart';

import 'data/repositories_implementation/control_repository_impl.dart';
import 'features/remote_control/controller/main/main_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SettingsRepository>(
          create: (_) => SettingsRepositoryImpl(
            const FlutterSecureStorage(),
          ),
        ),
        Provider<ControlRepository>(
          create: (_) => ControlRepositoryImpl(),
        ),
      ],
      child: ChangeNotifierProvider<SettingsController>(
        create: (BuildContext context) {
          return SettingsController();
        },
        child: Builder(
          builder: (context) {
            final settingController = Provider.of<SettingsController>(context);
            return ChangeNotifierProvider<MainController>(
              create: (BuildContext context) {
                return MainController();
              },
              child: GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: MaterialApp(
                  title: 'Control remoto universal',
                  theme: settingController.themeData,
                  routes: appRoutes,
                  initialRoute: Routes.splash,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
