import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/arrow_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/horizontal_number_buttons.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/ok_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_icon_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/turn_off_button.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/vertical_buttons.dart';
import 'package:mi_control_remoto_universal/utilities/circular_shadow.dart';
import 'package:unicons/unicons.dart';

class SamsungRemoteControlPage extends StatelessWidget {
  const SamsungRemoteControlPage({Key? key}) : super(key: key);

  static ProviderBase signalEmmiter = signalEmmiterControllerMain();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Center(
        child: SizedBox(
          width: 250,
          child: Consumer(
            builder: (context, ref, _) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/2560px-Samsung_Logo.svg.png',
                    width: 150,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: ShadowedIconButton(
                          icon: const Icon(UniconsLine.home_alt),
                          onPress: ref.read(signalEmmiter).menu,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 20),
                        child: TurnOnOffButton(
                          onPress: ref.read(signalEmmiter).turnOnOff,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  CircularShadow(
                    child: ClipOval(
                      child: ColoredBox(
                        color: Theme.of(context).cardColor,
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsetsDirectional.zero,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          children: [
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_drop_up_rounded,
                              onPress: ref.read(signalEmmiter).navigateUp,
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_left_rounded,
                              onPress: ref.read(signalEmmiter).navigateLeft,
                            ),
                            OkButton(
                              onPress: ref.read(signalEmmiter).enter,
                            ),
                            ArrowButton(
                              icon: Icons.arrow_right_rounded,
                              onPress: ref.read(signalEmmiter).navigateRight,
                            ),
                            const SizedBox.shrink(),
                            ArrowButton(
                              icon: Icons.arrow_drop_down_rounded,
                              onPress: ref.read(signalEmmiter).navigateDown,
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
                          onPress: ref.read(signalEmmiter).exit,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: ShadowedIconButton(
                          icon: const Icon(Icons.info_outline),
                          onPress: ref.read(signalEmmiter).info,
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
                            onPress: ref.read(signalEmmiter).volumeUp,
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
                            onPress: ref.read(signalEmmiter).volumeDown,
                          ),
                        ],
                      ),
                      VerticalButtons(
                        children: [
                          ShadowedIconButton(
                            shadowOpacity: 0,
                            icon: const Icon(FeatherIcons.chevronUp),
                            onPress: ref.read(signalEmmiter).nextChannel,
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
                            onPress: ref.read(signalEmmiter).previousChannel,
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
                        onPress: ref.read(signalEmmiter).guide,
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
                        onPress: ref.read(signalEmmiter).play,
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
                        onPress: ref.read(signalEmmiter).pause,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  HorizontalNumberButtons(
                    ref: ref,
                    signalEmmiter: signalEmmiter,
                  ),
                  const SizedBox(height: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
