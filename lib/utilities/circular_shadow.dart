import 'package:flutter/material.dart';

class CircularShadow extends StatelessWidget {
  final Widget child;
  final double? blur;
  final double? shadowOpacity;
  final Color? shadowOpacityColor;

  const CircularShadow({
    Key? key,
    required this.child,
    this.blur,
    this.shadowOpacity,
    this.shadowOpacityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        boxShadow: [
          BoxShadow(
            color: shadowOpacityColor != null
                ? shadowOpacityColor!
                : Theme.of(context)
                    .shadowColor
                    .withOpacity(shadowOpacity ?? .1),
            blurRadius: blur ?? 5,
          ),
        ],
      ),
      child: child,
    );
  }
}
