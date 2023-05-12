import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/number_button.dart';

import '../../controller/main/main_signal_emmiter_controller.dart';

class NumberMenu extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;
  final bool withEnter;

  const NumberMenu({
    required this.signalEmmiterGlobal,
    required this.withEnter,
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
              onPress: signalEmmiterGlobal.one,
            ),
            NumberButton(
              number: ' 2 ',
              onPress: signalEmmiterGlobal.two,
            ),
            NumberButton(
              number: ' 3 ',
              onPress: signalEmmiterGlobal.three,
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
              onPress: signalEmmiterGlobal.four,
            ),
            NumberButton(
              number: ' 5 ',
              onPress: signalEmmiterGlobal.five,
            ),
            NumberButton(
              number: ' 6 ',
              onPress: signalEmmiterGlobal.six,
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
              onPress: signalEmmiterGlobal.seven,
            ),
            NumberButton(
              number: ' 8 ',
              onPress: signalEmmiterGlobal.eight,
            ),
            NumberButton(
              number: ' 9 ',
              onPress: signalEmmiterGlobal.nine,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            withEnter == true ?
            NumberButton(
              number: 'Ent.',
              onPress: signalEmmiterGlobal.enter,
            ) : const SizedBox(),
            NumberButton(
              number: ' 0 ',
              onPress: signalEmmiterGlobal.zero,
            ),
            withEnter == true ?
            NumberButton(
              number: 'otro',
              onPress: signalEmmiterGlobal.ok,
            ) : const SizedBox(),
          ],
        )
      ],
    );
  }
}
