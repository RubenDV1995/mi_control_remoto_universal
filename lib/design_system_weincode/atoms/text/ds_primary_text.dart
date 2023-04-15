import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/dundation_typo.dart';

class DSPrimaryText extends StatelessWidget {
  final String title;
  const DSPrimaryText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: WeincodeTypographyFoundation.primaryTextStyle,
    );
  }
}
