import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../design_system/atoms/titles/buttons/title_buttons_base.dart';
import '../../../../utilities/constants/constants.dart';
import '../../controller/main/main_signal_emit_controller.dart';
import '../shadowed_icon_button.dart';
import '../vertical_buttons.dart';

class VolumeMenu extends StatelessWidget {
  final SignalEmitGlobal signalEmitGlobal;

  const VolumeMenu({
    required this.signalEmitGlobal,
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
              onPress: signalEmitGlobal.volumeUp,
            ),
            const SizedBox(height: 10),
            const TitleButtonsBase(
              title: lblVol,
              size: 14,
            ),
            const SizedBox(height: 10),
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.volume),
              onPress: signalEmitGlobal.volumeDown,
            ),
          ],
        ),
        VerticalButtons(
          children: [
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.angle_up),
              onPress: signalEmitGlobal.nextChannel,
            ),
            const SizedBox(height: 10),
            const TitleButtonsBase(
              title: lblCh,
              size: 14,
            ),
            const SizedBox(height: 10),
            ShadowedIconButton(
              shadowOpacity: 0,
              icon: const Icon(UniconsLine.angle_down),
              onPress: signalEmitGlobal.previousChannel,
            ),
          ],
        ),
      ],
    );
  }
}
