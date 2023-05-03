import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../design_system_weincode/atoms/buttons/DSSquareButton.dart';
import '../../../design_system_weincode/molecules/slot/DSSlot.dart';
import '../../../utilities/skeletons/device_skeleton.dart';
import '../../remote_control/controller/main/main_controller.dart';

class ContentDevices extends StatelessWidget {
  final void Function() onPressed;

  const ContentDevices({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDevice = Provider.of<MainController>(
      context,
    );
    if (currentDevice.isLoading == true) {
      return const DeviceSkeleton();
    }
    if (currentDevice.devices.isNotEmpty) {
      return SizedBox(
        height: 180,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: currentDevice.devices.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                DSSquareButton(
                  onPressed: () {
                    Provider.of<MainController>(context, listen: false)
                        .changeDevice(
                      currentDevice.devices[index],
                    );
                    Provider.of<MainController>(context, listen: false)
                        .setRemoteSignalEmmiter();
                  },
                  title: currentDevice.devices[index].brand,
                  urlImage: currentDevice.devices[index].urlImage,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            );
          },
        ),
      );
    } else if (currentDevice.devices.isEmpty &&
        currentDevice.isLoading == false) {
      return DSSlot(
        title: 'Lo sentimos \nNo hay dispositivos',
        titleButton: 'Volver a intentar',
        onPressed: onPressed,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
