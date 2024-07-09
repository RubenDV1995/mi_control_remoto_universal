import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../features/remote_control/controller/main/main_controller.dart';
import '../../../utilities/constants/constants.dart';
import '../../foundations/foundation_colors.dart';

part 'container_information.dart';

class InformationPane extends StatelessWidget {
  const InformationPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final currentDevice = Provider.of<MainController>(context);
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: WeincodeColorsFoundation.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              ContainerInformation(
                title: lblYourModel,
                subTitle: currentDevice.currentItem.brand,
              ),
              Container(
                width: 1,
                height: 40,
                color: WeincodeColorsFoundation.primaryColor300,
              ),
              ContainerInformation(
                title: lblModel,
                subTitle: currentDevice.devicesLength.toString(),
              )
            ],
          ),
        );
      },
    );
  }
}
