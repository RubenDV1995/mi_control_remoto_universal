import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/button/general_button.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/text/ds_secondary_text.dart';
import 'package:unicons/unicons.dart';

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
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/svg/no_data.svg',
            semanticsLabel: 'Acme Logo',
            width: 120,
          ),
          const SizedBox(
            height: 15,
          ),
          DSSecondaryText(
            title: title,
          ),
          onPressed != null
              ? Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      onPressed: onPressed,
                      icon: const Icon(UniconsLine.refresh),
                      text: titleButton!,
                    ),
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
