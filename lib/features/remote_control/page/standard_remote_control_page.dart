import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/content/number_menu.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:unicons/unicons.dart';

import '../controller/main/main_signal_emit_controller.dart';
import '../widget/content/directional_menu.dart';
import '../widget/content/media_menu.dart';
import '../widget/content/volume_menu.dart';
import '../widget/turn_off_button.dart';

class StandardRemoteControlPage extends StatelessWidget {
  final SignalEmitGlobal signalEmitGlobal;

  const StandardRemoteControlPage({required this.signalEmitGlobal, Key? key})
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
                onPress: signalEmitGlobal.inCycle,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.align_alt),
              onPress: signalEmitGlobal.guide,
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
                icon: const Icon(UniconsLine.arrows_shrink_h),
                onPress: signalEmitGlobal.jump,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(UniconsLine.volume_mute),
              onPress: signalEmitGlobal.mute,
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.ellipsis_v),
                onPress: signalEmitGlobal.options,
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
        NumberMenu(
          signalEmitGlobal: signalEmitGlobal,
          withEnter: false,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
