import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/utilities/base_button.dart';
import 'package:mi_control_remoto_universal/utilities/circular_shadow.dart';

class ShadowedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final double? shadowOpacity;
  final Color? shadowOpacityColor;

  const ShadowedButton({
    Key? key,
    required this.child,
    required this.onPress,
    this.backgroundColor,
    this.shadowOpacity,
    this.shadowOpacityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularShadow(
      shadowOpacity: shadowOpacity,
      shadowOpacityColor: shadowOpacityColor,
      child: BaseButton(
        backgroundColor: backgroundColor,
        child: child,
        onPress: onPress,
      ),
    );
  }
}