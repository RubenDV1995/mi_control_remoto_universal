import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/color_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/media_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/volume_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emit_controller.dart';
import '../widget/content/directional_menu.dart';

class LgRemoteControlPage extends StatelessWidget {
  final SignalEmitGlobal signalEmitGlobal;

  const LgRemoteControlPage({required this.signalEmitGlobal, Key? key})
      : super(key: key);

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
                onPress: signalEmitGlobal.home,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.info_circle),
              onPress: signalEmitGlobal.info,
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
                icon: const Icon(UniconsLine.exit),
                onPress: signalEmitGlobal.exit,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.volume_mute),
              onPress: signalEmitGlobal.mute,
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.arrow_left),
                onPress: signalEmitGlobal.back,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        VolumeMenu(
          signalEmitGlobal: signalEmitGlobal,
        ),
        const SizedBox(height: 30),
        MediaMenu(
          signalEmitGlobal: signalEmitGlobal,
        ),
        const SizedBox(height: 30),
        const ColorMenu(),
        const SizedBox(height: 30),
        const SizedBox(height: 30),
      ],
    );
  }
}
