import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emit_controller.dart';
import '../widget/content/directional_menu.dart';
import '../widget/content/number_menu.dart';
import '../widget/content/volume_menu.dart';

class SamsungRemoteControlPage extends StatelessWidget {
  final SignalEmitGlobal signalEmitGlobal;

  const SamsungRemoteControlPage({
    required this.signalEmitGlobal,
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
                onPress: signalEmitGlobal.menu,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 20),
              child: TurnOnOffButton(
                onPress: signalEmitGlobal.turnOnOff,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        DirectionalMenu(
          signalEmitGlobal: signalEmitGlobal,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.exit_to_app),
                onPress: signalEmitGlobal.exit,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.info_outline),
                onPress: signalEmitGlobal.info,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        VolumeMenu(
          signalEmitGlobal: signalEmitGlobal,
        ),
        const SizedBox(height: 30),
        NumberMenu(
          signalEmitGlobal: signalEmitGlobal,
          withEnter: false,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
