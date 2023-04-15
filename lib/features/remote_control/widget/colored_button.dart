import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/utilities/base_button.dart';

class ColoredButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPress;

  const ColoredButton({
    Key? key,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onPress: onPress,
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Opacity(
              opacity: .2,
              child: Container(
                width: 40,
                height: 40,
                color: color,
                padding: const EdgeInsets.all(5),
              ),
            ),
            ClipOval(
              child: Container(
                width: 30,
                height: 30,
                color: color,
                padding: const EdgeInsets.all(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}