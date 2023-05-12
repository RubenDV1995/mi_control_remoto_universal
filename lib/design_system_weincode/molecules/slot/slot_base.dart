import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/subtitles/subtitle.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/title_base.dart';

import '../../atoms/buttons/button_base.dart';

class SlotBase extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? titleButton;
  final VoidCallback? onPressed;
  final bool customDesign;

  const SlotBase({
    Key? key,
    required this.title,
    required this.customDesign,
    this.onPressed,
    this.titleButton,
    this.subtitle,
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
          TitleDesign(
            title: title,
            subtitle: subtitle,
            customDesign: customDesign,
          ),
          onPressed != null
              ? ButtonBase(
                  onPressed: onPressed!,
                  title: titleButton ?? 'Try again',
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class TitleDesign extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool customDesign;

  const TitleDesign({
    required this.title,
    required this.customDesign,
    Key? key,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (customDesign == true) {
      return Column(
        children: [
          if (subtitle != null)
            TitleBase(
              title: subtitle!,
            ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 14,
                ),
          ),
        ],
      );
    }
    return Subtitle(
      subtitle: title,
    );
  }
}
