import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_button.dart';

class NumberButton extends StatelessWidget {
  final String number;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final double? shadowOpacity;
  final EdgeInsets? padding;

  const NumberButton({
    Key? key,
    required this.number,
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
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      onPress: onPress,
      backgroundColor: backgroundColor,
    );
  }
}
