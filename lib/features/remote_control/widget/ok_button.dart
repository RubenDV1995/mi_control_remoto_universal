import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/utilities/base_button.dart';

class OkButton extends StatelessWidget {
  final VoidCallback onPress;

  const OkButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onPress: onPress,
      child: Container(
        color: Colors.grey.withOpacity(.1),
        child: const Center(
          child: Text(
            'OK',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}