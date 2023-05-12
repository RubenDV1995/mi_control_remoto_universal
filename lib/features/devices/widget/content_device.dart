import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/domain/repositories/control_repository.dart';
import 'package:provider/provider.dart';

import '../../../design_system_weincode/atoms/buttons/square_button_base.dart';
import '../../../design_system_weincode/molecules/slot/slot_base.dart';
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
                SquareButtonBase(
                  onPressed: () {
                    Provider.of<MainController>(context, listen: false)
                        .setDevice(
                      currentDevice.devices[index],
                    );
                    Provider.of<ControlRepository>(context, listen: false)
                        .setDeviceId(
                      int.parse(currentDevice.devices[index].id),
                    );
                  },
                  item: currentDevice.devices[index],
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
      return SlotBase(
        title: 'No se encontraron dispositivos. \nPor favor, inténtalo de nuevo más tarde. \nGracias.',
        subtitle: 'Ups!',
        titleButton: 'Volver a intentar',
        onPressed: onPressed,
        customDesign: true,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
