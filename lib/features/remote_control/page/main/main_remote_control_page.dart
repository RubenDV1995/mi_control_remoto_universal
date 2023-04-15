import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/templates/pages/ds_base_page.dart';
import 'package:mi_control_remoto_universal/features/bottom_navigation_bar/controller/bottom_navigation_controller.dart';
import 'package:mi_control_remoto_universal/features/bottom_navigation_bar/widget/bottom_navigation_bar_widget.dart';
import 'package:mi_control_remoto_universal/features/devices/page/devices_page.dart';
import 'package:mi_control_remoto_universal/features/power_navigation_bar/widget/power_navigation_bar.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/features/remote_control/page/lg_remote_control_page.dart';
import 'package:mi_control_remoto_universal/features/remote_control/page/samsung_remote_control_page.dart';
import 'package:mi_control_remoto_universal/features/settings/page/settings_page.dart';

class MainRemoteControlPage extends ConsumerWidget {
  const MainRemoteControlPage({Key? key}) : super(key: key);

  static ProviderBase signalEmmiter = signalEmmiterControllerMain();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(bottomNavigationControllerProvider) == 0
          ? Stack(
              children: [
                SingleChildScrollView(
                    child: DSBasePage(
                      child: Column(
                        children: [
                          ref.watch(modelControlProvider).brand ==
                                  ControlBrand.samsung
                              ? const SamsungRemoteControlPage()
                              : const LgRemoteControlPage(),
                        ],
                      ),
                    ),
                  ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: PowerNavigationBar(),
                  ),
                )
              ],
            )
          : ref.watch(bottomNavigationControllerProvider) == 1
              ? DevicesPage()
              : const SettingsPage(),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
