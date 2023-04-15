import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/dundation_typo.dart';

class DSSecondaryText extends StatelessWidget {
  final String title;

  const DSSecondaryText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: WeincodeTypographyFoundation.secondaryTextStyle,
    );
  }
}
