import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/listview/listview_base.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/templates/pages/page_base.dart';
import 'package:mi_control_remoto_universal/domain/repositories/settings_repository.dart';
import 'package:mi_control_remoto_universal/features/settings/controller/settings_controller.dart';
import 'package:mi_control_remoto_universal/utilities/constants/constants.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

import '../../../design_system_weincode/atoms/buttons/icon_buttons/icon_button_base.dart';
import '../../../design_system_weincode/atoms/card/card_base.dart';
import '../../../design_system_weincode/atoms/subtitles/subtitle.dart';
import '../../../design_system_weincode/atoms/terms/terms_base.dart';
import '../../../design_system_weincode/atoms/titles/title_base.dart';

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
        return PageBase(
          title: lblSettings,
          template: PageTemplate.settings,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Subtitle(
                  subtitle: lblConnect,
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
                const TitleBase(
                  title: lblPersonalization,
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
                  title: lblDarkMode,
                ),
                ListviewBase(
                  child: IconButtonBase(
                    onPressed: () {},
                    iconData: UniconsLine.image,
                  ),
                  title: lblBackground,
                ),
                const SizedBox(
                  height: 30,
                ),
                const TermsBase(),
              ],
            ),
          ),
        );
      },
    );
  }
}
