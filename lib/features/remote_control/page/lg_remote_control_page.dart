import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/arrow_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/colored_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/horizontal_number_buttons.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/ok_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/vertical_buttons.dart';
import 'package:mi_control_remoto_universal/utilities/circular_shadow.dart';
import 'package:provider/provider.dart';

import '../../../design_system_weincode/foundations/foundation_colors.dart';
import '../controller/main/main_controller.dart';

class LgRemoteControlPage extends StatelessWidget {
  const LgRemoteControlPage({Key? key}) : super(key: key);

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
                icon: const Icon(Icons.info_outline),
                onPress: Provider.of<MainController>(context, listen: false)
                    .signalEmmiterGlobal
                    .info,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(FeatherIcons.home),
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .home,
            ),
            Transform.translate(
              offset: const Offset(0, 20),
              child: TurnOnOffButton(
                onPress: Provider.of<MainController>(context, listen: false)
                    .signalEmmiterGlobal
                    .turnOnOff,
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
                    onPress: Provider.of<MainController>(context, listen: false)
                        .signalEmmiterGlobal
                        .navigateUp,
                  ),
                  const SizedBox.shrink(),
                  ArrowButton(
                    icon: Icons.arrow_left_rounded,
                    onPress: Provider.of<MainController>(context, listen: false)
                        .signalEmmiterGlobal
                        .navigateLeft,
                  ),
                  OkButton(
                    onPress: Provider.of<MainController>(context, listen: false)
                        .signalEmmiterGlobal
                        .ok,
                  ),
                  ArrowButton(
                    icon: Icons.arrow_right_rounded,
                    onPress: Provider.of<MainController>(context, listen: false)
                        .signalEmmiterGlobal
                        .navigateRight,
                  ),
                  const SizedBox.shrink(),
                  ArrowButton(
                    icon: Icons.arrow_drop_down_rounded,
                    onPress: Provider.of<MainController>(context, listen: false)
                        .signalEmmiterGlobal
                        .navigateDown,
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
                onPress: Provider.of<MainController>(context, listen: false)
                    .signalEmmiterGlobal
                    .exit,
              ),
            ),
            ShadowedIconButton(
              icon: const Icon(FeatherIcons.volumeX),
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .mute,
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: ShadowedIconButton(
                icon: const Icon(Icons.arrow_back),
                onPress: Provider.of<MainController>(context, listen: false)
                    .signalEmmiterGlobal
                    .back,
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
                  icon: const Icon(FeatherIcons.volume2),
                  onPress: Provider.of<MainController>(context, listen: false)
                      .signalEmmiterGlobal
                      .volumeUp,
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
                  icon: const Icon(FeatherIcons.volume1),
                  onPress: Provider.of<MainController>(context, listen: false)
                      .signalEmmiterGlobal
                      .volumeDown,
                ),
              ],
            ),
            VerticalButtons(
              children: [
                ShadowedIconButton(
                  shadowOpacity: 0,
                  icon: const Icon(FeatherIcons.chevronUp),
                  onPress: Provider.of<MainController>(context, listen: false)
                      .signalEmmiterGlobal
                      .nextChannel,
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
                  onPress: Provider.of<MainController>(context, listen: false)
                      .signalEmmiterGlobal
                      .previousChannel,
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
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .backwards,
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
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .play,
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
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .pause,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColoredButton(
              color: Colors.red.shade400,
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .red,
            ),
            ColoredButton(
              color: Colors.green.shade400,
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .green,
            ),
            ColoredButton(
              color: Colors.yellow.shade400,
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .yellow,
            ),
            ColoredButton(
              color: Colors.blue.shade400,
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .blue,
            ),
          ],
        ),
        const SizedBox(height: 30),
        const HorizontalNumberButtons(),
        const SizedBox(height: 30),
      ],
    );
  }
}
