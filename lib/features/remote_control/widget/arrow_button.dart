import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/utilities/base_button.dart';

class ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const ArrowButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onPress: onPress,
      child: Icon(
        icon,
        size: 64,
        color: Colors.grey,
      ),
    );
  }
}
