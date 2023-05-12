import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/domain/repositories/control_repository.dart';
import 'package:mi_control_remoto_universal/features/remote_control/page/lg_remote_control_page.dart';
import 'package:provider/provider.dart';

import '../../../../design_system_weincode/atoms/image/image_network_base.dart';
import '../../../../domain/models/device_model.dart';
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
              width: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  ImageNetworkBase(
                    item: currentDevice.currentItem,
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

class RemoteControl extends StatefulWidget {
  const RemoteControl({Key? key}) : super(key: key);

  @override
  State<RemoteControl> createState() => _RemoteControlState();
}

class _RemoteControlState extends State<RemoteControl> {
  @override
  void initState() {
    super.initState();
    getDevice();
  }

  Future<void> getDevice() async {
    String deviceId = await Provider.of<ControlRepository>(
      context,
      listen: false,
    ).getDeviceId();
    List<Items> items = await Provider.of<ControlRepository>(
      context,
      listen: false,
    ).getDevicesFromLocalJson();
    Provider.of<MainController>(
      context,
      listen: false,
    ).setDeviceById(
      deviceId: deviceId,
      items: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentDeviceId = Provider.of<MainController>(context).currentItem;
    final signalEmmiterGlobal =
        Provider.of<MainController>(context, listen: false).signalEmmiterGlobal;
    if (currentDeviceId.id == '2') {
      return SamsungRemoteControlPage(
        signalEmmiterGlobal: signalEmmiterGlobal,
      );
    }
    if (currentDeviceId.id == '3') {
      return LgRemoteControlPage(
        signalEmmiterGlobal: signalEmmiterGlobal,
      );
    }
    return StandardRemoteControlPage(
      signalEmmiterGlobal: signalEmmiterGlobal,
    );
  }
}
