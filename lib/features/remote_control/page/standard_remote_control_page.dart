import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:unicons/unicons.dart';

import '../../../utilities/circular_shadow.dart';
import '../widget/arrow_button.dart';
import '../widget/ok_button.dart';
import '../widget/turn_off_button.dart';
import '../widget/vertical_buttons.dart';

class StandardRemoteControlPage extends StatelessWidget {
  const StandardRemoteControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: const Offset(0, 20),
              child: ShadowedIconButton(
                icon: const Icon(UniconsLine.home_alt),
                onPress: () {},
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 20),
              child: TurnOnOffButton(
                onPress: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CircularShadow(
          child: ClipOval(
            child: ColoredBox(
              color: WeincodeColorsFoundation.backgroundColorButtonsDevices,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsetsDirectional.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  const SizedBox.shrink(),
                  ArrowButton(
                    icon: Icons.arrow_drop_up_rounded,
                    onPress: () {},
                  ),
                  const SizedBox.shrink(),
                  ArrowButton(
                    icon: Icons.arrow_left_rounded,
                    onPress: () {},
                  ),
                  OkButton(
                    onPress: () {},
                  ),
                  ArrowButton(
                    icon: Icons.arrow_right_rounded,
                    onPress: () {},
                  ),
                  const SizedBox.shrink(),
                  ArrowButton(
                    icon: Icons.arrow_drop_down_rounded,
                    onPress: () {},
                  ),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.exit_to_app),
                onPress: () {},
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.info_outline),
                onPress: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VerticalButtons(
              children: [
                ShadowedIconButton(
                  shadowOpacity: 0,
                  icon: const Icon(UniconsLine.volume_up),
                  onPress: () {},
                ),
                const SizedBox(height: 10),
                Text(
                  'vol',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ShadowedIconButton(
                  shadowOpacity: 0,
                  icon: const Icon(UniconsLine.volume),
                  onPress: () {},
                ),
              ],
            ),
            VerticalButtons(
              children: [
                ShadowedIconButton(
                  shadowOpacity: 0,
                  icon: const Icon(FeatherIcons.chevronUp),
                  onPress: () {},
                ),
                const SizedBox(height: 10),
                Text(
                  'ch',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ShadowedIconButton(
                  shadowOpacity: 0,
                  icon: const Icon(FeatherIcons.chevronDown),
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShadowedIconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(
                FeatherIcons.chevronsLeft,
                size: 24,
              ),
              onPress: () {},
            ),
            ShadowedIconButton(
              padding: const EdgeInsets.all(10),
              icon: Transform.translate(
                offset: const Offset(2, 0),
                child: const Icon(
                  FeatherIcons.play,
                  size: 24,
                ),
              ),
              onPress: () {},
            ),
            ShadowedIconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(
                FeatherIcons.pause,
                size: 24,
              ),
              onPress: () {},
            ),
            ShadowedIconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(
                FeatherIcons.chevronsRight,
                size: 24,
              ),
              onPress: () {},
            ),
          ],
        ),
        const SizedBox(height: 30),
        /*
                    HorizontalNumberButtons(
                      ref: ref,
                      signalEmmiter: signalEmmiter,
                    ),
                     */
        const SizedBox(height: 30),
      ],
    );
  }
}
