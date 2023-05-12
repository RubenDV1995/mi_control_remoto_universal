import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mi_control_remoto_universal/data/repositories_implementation/settings_repository_impl.dart';
import 'package:mi_control_remoto_universal/data/services/local/json/local_json_service.dart';
import 'package:mi_control_remoto_universal/domain/repositories/control_repository.dart';
import 'package:mi_control_remoto_universal/domain/repositories/settings_repository.dart';
import 'package:mi_control_remoto_universal/features/settings/controller/settings_controller.dart';
import 'package:mi_control_remoto_universal/routes/app_routes.dart';
import 'package:mi_control_remoto_universal/routes/routes.dart';
import 'package:mi_control_remoto_universal/utilities/constants/constants.dart';
import 'package:provider/provider.dart';

import 'data/repositories_implementation/control_repository_impl.dart';
import 'features/remote_control/controller/main/main_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        Provider<SettingsRepository>(
          create: (_) => SettingsRepositoryImpl(
            const FlutterSecureStorage(),
          ),
        ),
        Provider<ControlRepository>(
          create: (_) => ControlRepositoryImpl(
            flutterSecureStorage: const FlutterSecureStorage(),
            localJsonService: LocalJsonService(
              urlBase: urlBase,
            ),
          ),
        ),
      ],
      child: ChangeNotifierProvider<SettingsController>(
        create: (_) => SettingsController(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    getTheme();
  }

  Future<void> getTheme() async {
    bool isDarkMode = await Provider.of<SettingsRepository>(
      context,
      listen: false,
    ).getThemeMode();
    Provider.of<SettingsController>(
      context,
      listen: false,
    ).setTheme(isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
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
              title: titleApp,
              theme: settingController.themeData,
              routes: appRoutes,
              initialRoute: Routes.splash,
              debugShowCheckedModeBanner: false,
            ),
          ),
        );
      },
    );
  }
}
