import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/shadowed_button.dart';
import 'package:unicons/unicons.dart';

class PowerNavigationBar extends StatelessWidget {
  const PowerNavigationBar({Key? key}) : super(key: key);

  static ProviderBase signalEmmiter = signalEmmiterControllerMain();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Consumer(
        builder: (context, ref, _) {
          return Stack(
            children: [
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage(
                      'assets/images/png/wave.png',
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ShadowedButton(
                    shadowOpacity: 1,
                    shadowOpacityColor: Colors.red.shade300.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: IconTheme(
                        data: IconTheme.of(context).copyWith(
                          size: 40,
                        ),
                        child: const Icon(
                          UniconsLine.power,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPress: () {
                      try {
                        ref.read(signalEmmiter).turnOnOff;
                      }catch(e){
                        print(e);
                      }
                    },
                    backgroundColor: Colors.red.shade300,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
