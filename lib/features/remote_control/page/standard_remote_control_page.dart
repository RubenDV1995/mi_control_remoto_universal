import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/number_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emmiter_controller.dart';
import '../widget/content/directional_menu.dart';
import '../widget/content/media_menu.dart';
import '../widget/content/volume_menu.dart';
import '../widget/turn_off_button.dart';

class StandardRemoteControlPage extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const StandardRemoteControlPage({required this.signalEmmiterGlobal, Key? key})
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
                icon: const Icon(UniconsLine.circle_layer),
                onPress: signalEmmiterGlobal.inCycle,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.align_alt),
              onPress: signalEmmiterGlobal.guide,
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
                icon: const Icon(UniconsLine.arrows_shrink_h),
                onPress: signalEmmiterGlobal.jump,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.volume_mute),
              onPress: signalEmmiterGlobal.mute,
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.ellipsis_v),
                onPress: signalEmmiterGlobal.options,
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
        NumberMenu(
          signalEmmiterGlobal: signalEmmiterGlobal,
          withEnter: false,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
