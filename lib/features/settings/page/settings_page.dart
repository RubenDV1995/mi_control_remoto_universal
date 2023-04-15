import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/templates/pages/ds_base_page.dart';
import 'package:mi_control_remoto_universal/utilities/theme.dart';
import 'package:unicons/unicons.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DSBasePage(
      title: 'Ajustes',
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Consumer(builder: (context, ref, _) {
            return Column(
              children: [
                const Icon(
                  UniconsLine.sun,
                  color: Colors.grey,
                ),
                Switch(
                  value: ref.watch(appThemeProvider) == AppTheme.dark,
                  onChanged: (value) {
                    ref.read(appThemeProvider.notifier).toggleTheme();
                  },
                ),
                const Icon(
                  UniconsLine.moon,
                  color: Colors.grey,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
