import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_button.dart';

class ShadowedIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final double? shadowOpacity;
  final EdgeInsets? padding;

  const ShadowedIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
    this.backgroundColor,
    this.shadowOpacity,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowedButton(
      shadowOpacity: shadowOpacity,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(15),
        child: IconTheme(
          data: IconTheme.of(context).copyWith(
            size: 32,
          ),
          child: icon,
        ),
      ),
      onPress: onPress,
      backgroundColor: backgroundColor,
    );
  }
}