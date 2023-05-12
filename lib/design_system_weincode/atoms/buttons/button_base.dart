import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/title_base.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

class ButtonBase extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String? urlImage;

  const ButtonBase({
    required this.onPressed,
    required this.title,
    this.urlImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: WeincodeColorsFoundation.primaryColor,

          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (urlImage != null)
                Image.network(
                  urlImage!,
                  height: 30,
                  width: 30,
                ),
              const SizedBox(
                width: 10,
              ),
              TitleBase(
                title: title,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
