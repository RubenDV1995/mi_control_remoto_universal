import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/subtitles/subtitle.dart';

import '../../atoms/buttons/DSButton.dart';

class DSSlot extends StatelessWidget {
  final String title;
  final String? titleButton;
  final VoidCallback? onPressed;

  const DSSlot({
    Key? key,
    required this.title,
    this.onPressed,
    this.titleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/svg/undraw_warning_re_eoyh.svg',
            semanticsLabel: 'Acme Logo',
            width: 120,
          ),
          const SizedBox(
            height: 15,
          ),
          Subtitle(
            subtitle: title,
          ),
          onPressed != null
              ? DSButton(
                  onPressed: onPressed!,
                  title: titleButton?? 'Try again',
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
