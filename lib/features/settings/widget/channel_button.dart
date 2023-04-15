import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/utilities/rectangle_base_button.dart';

class ChannelButton extends StatelessWidget {
  final String urlImage;
  final VoidCallback onPress;
  final bool deviceStatus;

  const ChannelButton({
    Key? key,
    required this.urlImage,
    required this.onPress,
    required this.deviceStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RectangleBaseButton(
        onPress: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                urlImage,
              ),
              deviceStatus == true ? Row(
                children: [
                  const SizedBox(width: 10,),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ) : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
