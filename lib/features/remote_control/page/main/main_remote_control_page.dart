import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/page/lg_remote_control_page.dart';
import 'package:provider/provider.dart';

import '../../controller/main/main_controller.dart';
import '../samsung_remote_control_page.dart';
import '../standard_remote_control_page.dart';

class MainRemoteControlPage extends StatelessWidget {
  const MainRemoteControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final currentDevice = Provider.of<MainController>(context);
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: SizedBox(
              width: 250,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  Image.network(
                    currentDevice.currentItem.urlImage,
                    width: 150,
                  ),
                  const SizedBox(height: 15),
                  const RemoteControl(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class RemoteControl extends StatelessWidget {
  const RemoteControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDeviceId = Provider.of<MainController>(context).currentItem;
    if (currentDeviceId.id == '2') {
      return const SamsungRemoteControlPage();
    }
    if (currentDeviceId.id == '3') {
      return const LgRemoteControlPage();
    }
    return const StandardRemoteControlPage();
  }
}
