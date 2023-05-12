import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

import '../../../domain/models/device_model.dart';
import '../image/image_network_base.dart';
import '../titles/title_base.dart';

class SquareButtonBase extends StatelessWidget {
  final void Function() onPressed;
  final Items item;

  const SquareButtonBase({
    required this.onPressed,
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: WeincodeColorsFoundation.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ImageNetworkBase(
                      item: item,
                      width: 50,
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.brand,
                        style: const TextStyle(
                          fontSize: 16,
                          color:
                              WeincodeColorsFoundation.textColorButtonDarkMode,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      TitleBase(
                        title: item.numberButtons.toString(),
                        size: 45,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
