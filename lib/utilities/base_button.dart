import 'package:flutter/material.dart';

import '../design_system_weincode/foundations/foundation_colors.dart';

class BaseButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;
  final Color? backgroundColor;

  const BaseButton({
    Key? key,
    required this.child,
    required this.onPress,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        shadowColor: Colors.transparent,
        color: backgroundColor?? WeincodeColorsFoundation.backgroundColorButtonsDevices,
        child: InkWell(
          onTap: onPress,
          child: child,
        ),
      ),
    );
  }
}