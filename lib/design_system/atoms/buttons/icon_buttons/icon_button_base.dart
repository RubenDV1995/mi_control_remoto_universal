import 'package:flutter/material.dart';

import '../../../foundations/foundation_colors.dart';

class IconButtonBase extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;

  const IconButtonBase({
    required this.onPressed,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: WeincodeColorsFoundation.primaryColor,
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 24.0,
        semanticLabel: 'Icon',
      ),
    );
  }
}
