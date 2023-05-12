import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/color_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/media_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/volume_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emmiter_controller.dart';
import '../widget/content/directional_menu.dart';
import '../widget/content/number_menu.dart';

class LgRemoteControlPage extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const LgRemoteControlPage({required this.signalEmmiterGlobal, Key? key})
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
                onPress: signalEmmiterGlobal.home,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.info_circle),
              onPress: signalEmmiterGlobal.info,
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
                icon: const Icon(UniconsLine.exit),
                onPress: signalEmmiterGlobal.exit,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.volume_mute),
              onPress: signalEmmiterGlobal.mute,
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.arrow_left),
                onPress: signalEmmiterGlobal.back,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        VolumeMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
        ),
        const SizedBox(height: 30),
        MediaMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
        ),
        const SizedBox(height: 30),
        const ColorMenu(),
        const SizedBox(height: 30),
        NumberMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
          withEnter: true,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
