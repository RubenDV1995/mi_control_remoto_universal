import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../design_system_weincode/atoms/titles/buttons/title_buttons_base.dart';
import '../../controller/main/main_signal_emmiter_controller.dart';
import '../shadowed_icon_button.dart';
import '../vertical_buttons.dart';

class VolumeMenu extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const VolumeMenu({
    required this.signalEmmiterGlobal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        VerticalButtons(
          children: [
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.volume_up),
              onPress: signalEmmiterGlobal.volumeUp,
            ),
            const SizedBox(height: 10),
            const TitleButtonsBase(
              title: 'vol',
              size: 14,
            ),
            const SizedBox(height: 10),
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.volume),
              onPress: signalEmmiterGlobal.volumeDown,
            ),
          ],
        ),
        VerticalButtons(
          children: [
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.angle_up),
              onPress: signalEmmiterGlobal.nextChannel,
            ),
            const SizedBox(height: 10),
            const TitleButtonsBase(
              title: 'ch',
              size: 14,
            ),
            const SizedBox(height: 10),
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.angle_down),
              onPress: signalEmmiterGlobal.previousChannel,
            ),
          ],
        ),
      ],
    );
  }
}
