import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../controller/main/main_signal_emmiter_controller.dart';
import '../shadowed_icon_button.dart';

class MediaMenu extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const MediaMenu({
    required this.signalEmmiterGlobal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShadowedIconButton(
          padding: const EdgeInsets.all(10),
          icon: const Icon(
            UniconsLine.step_backward,
            size: 24,
          ),
          onPress: signalEmmiterGlobal.backwards,
        ),
        ShadowedIconButton(
          padding: const EdgeInsets.all(10),
          icon: Transform.translate(
            offset: const Offset(2, 0),
            child: const Icon(
              UniconsLine.play,
              size: 24,
            ),
          ),
          onPress: signalEmmiterGlobal.play,
        ),
        ShadowedIconButton(
          padding: const EdgeInsets.all(10),
          icon: const Icon(
            UniconsLine.pause,
            size: 24,
          ),
          onPress: signalEmmiterGlobal.pause,
        ),
        ShadowedIconButton(
          padding: const EdgeInsets.all(10),
          icon: const Icon(
            UniconsLine.skip_forward,
            size: 24,
          ),
          onPress: signalEmmiterGlobal.forward,
        ),
      ],
    );
  }
}
