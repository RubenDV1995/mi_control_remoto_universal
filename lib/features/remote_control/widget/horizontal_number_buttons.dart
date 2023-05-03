import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/number_button.dart';
import 'package:provider/provider.dart';

import '../controller/main/main_controller.dart';

class HorizontalNumberButtons extends StatelessWidget {
  const HorizontalNumberButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: ' 1 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 2 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 3 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: ' 4 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 5 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 6 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: ' 7 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 8 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 9 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 'Ent.',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: ' 0 ',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
            NumberButton(
              number: 'otro',
              onPress: Provider.of<MainController>(context, listen: false)
                  .signalEmmiterGlobal
                  .info,
            ),
          ],
        )
      ],
    );
  }
}
