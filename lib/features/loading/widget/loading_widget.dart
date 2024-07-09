import 'package:flutter/material.dart';

import '../../../design_system/foundations/foundation_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: WeincodeColorsFoundation.primaryColor,
    );
  }
}
