import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:unicons/unicons.dart';

class TurnOnOffButton extends StatelessWidget {
  final VoidCallback onPress;
  const TurnOnOffButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowedIconButton(
      backgroundColor: Colors.red.shade300,
      onPress: onPress,
      icon: Transform.translate(
        offset: const Offset(0, -2),
        child: const Icon(
          UniconsLine.power,
          color: Colors.white,
        ),
      ),
    );
  }
}