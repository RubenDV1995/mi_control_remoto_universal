import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/card/card_base.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/listview/listview_base.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/templates/pages/ds_base_page.dart';
import 'package:mi_control_remoto_universal/domain/repositories/settings_repository.dart';
import 'package:mi_control_remoto_universal/features/settings/controller/settings_controller.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

import '../../../design_system_weincode/atoms/buttons/icon_buttons/icon_button_base.dart';
import '../../../design_system_weincode/atoms/subtitles/subtitle.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  void onThemeChanged({
    required BuildContext context,
    required bool value,
    required SettingsController settingsController,
  }) async {
    settingsController.setTheme(value);
    await Provider.of<SettingsRepository>(
      context,
      listen: false,
    ).setThemeMode(value);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final settingController =
            Provider.of<SettingsController>(context, listen: true);
        return DSBasePage(
          title: 'Settings',
          template: DSTemplate.settings,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Subtitle(
                  subtitle: 'Conéctate con nosotros en las redes sociales y mantente al día con nuestras últimas actualizaciones, nuevas características y promociones especiales. \n¡Síguenos ahora y únete a nuestra comunidad en línea!',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CardBase(
                  cardBaseDesign: CardBaseDesign.facebook,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardBase(
                  cardBaseDesign: CardBaseDesign.twitter,
                ),
                const SizedBox(
                  height: 30,
                ),
                ListviewBase(
                  child: Switch(
                    value: settingController.isDarkMode,
                    onChanged: (value) {
                      onThemeChanged(
                        settingsController: settingController,
                        context: context,
                        value: value,
                      );
                    },
                  ),
                  title: 'Modo obscuro',
                ),
                ListviewBase(
                  child: IconButtonBase(
                    onPressed: () {},
                    iconData: UniconsLine.image,
                  ),
                  title: 'Fondo de pantalla',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
