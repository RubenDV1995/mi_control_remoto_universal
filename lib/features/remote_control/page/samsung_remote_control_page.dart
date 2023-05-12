import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emmiter_controller.dart';
import '../widget/content/directional_menu.dart';
import '../widget/content/number_menu.dart';
import '../widget/content/volume_menu.dart';

class SamsungRemoteControlPage extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const SamsungRemoteControlPage({
    required this.signalEmmiterGlobal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: const Offset(0, 20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.home_alt),
                onPress: signalEmmiterGlobal.menu,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 20),
              child: TurnOnOffButton(
                onPress: signalEmmiterGlobal.turnOnOff,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        DirectionalMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.exit_to_app),
                onPress: signalEmmiterGlobal.exit,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.info_outline),
                onPress: signalEmmiterGlobal.info,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        VolumeMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
        ),
        const SizedBox(height: 30),
        NumberMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
          withEnter: false,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
