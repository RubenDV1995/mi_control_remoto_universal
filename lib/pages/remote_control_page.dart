import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/features/remote_control/page/main/main_remote_control_page.dart';
import 'package:mi_control_remoto_universal/utilities/theme.dart';

class RemoteControlPage extends StatelessWidget {
  const RemoteControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ProviderScope(
        child: Consumer(
          builder: (context, ref, _) {
            return MaterialApp(
              theme: getTheme(context, ref.watch(appThemeProvider)),
              home: const MainRemoteControlPage(),
            );
          },
        ),
      ),
    );
  }
}
