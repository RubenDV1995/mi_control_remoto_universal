import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/main/main_controller.dart';
import '../colored_button.dart';

class ColorMenu extends StatelessWidget {
  const ColorMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredButton(
          color: Colors.red.shade400,
          onPress: Provider.of<MainController>(context, listen: false)
              .signalEmitGlobal
              .red,
        ),
        ColoredButton(
          color: Colors.green.shade400,
          onPress: Provider.of<MainController>(context, listen: false)
              .signalEmitGlobal
              .green,
        ),
        ColoredButton(
          color: Colors.yellow.shade400,
          onPress: Provider.of<MainController>(context, listen: false)
              .signalEmitGlobal
              .yellow,
        ),
        ColoredButton(
          color: Colors.blue.shade400,
          onPress: Provider.of<MainController>(context, listen: false)
              .signalEmitGlobal
              .blue,
        ),
      ],
    );
  }
}
