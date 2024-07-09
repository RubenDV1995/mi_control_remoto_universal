import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/number_button.dart';

import '../../controller/main/main_signal_emit_controller.dart';

class NumberMenu extends StatelessWidget {
  final SignalEmitGlobal signalEmitGlobal;
  final bool withEnter;

  const NumberMenu({
    required this.signalEmitGlobal,
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
              onPress: signalEmitGlobal.one,
            ),
            NumberButton(
              number: ' 2 ',
              onPress: signalEmitGlobal.two,
            ),
            NumberButton(
              number: ' 3 ',
              onPress: signalEmitGlobal.three,
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
              onPress: signalEmitGlobal.four,
            ),
            NumberButton(
              number: ' 5 ',
              onPress: signalEmitGlobal.five,
            ),
            NumberButton(
              number: ' 6 ',
              onPress: signalEmitGlobal.six,
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
              onPress: signalEmitGlobal.seven,
            ),
            NumberButton(
              number: ' 8 ',
              onPress: signalEmitGlobal.eight,
            ),
            NumberButton(
              number: ' 9 ',
              onPress: signalEmitGlobal.nine,
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
              onPress: signalEmitGlobal.enter,
            ) : const SizedBox(),
            NumberButton(
              number: ' 0 ',
              onPress: signalEmitGlobal.zero,
            ),
            withEnter == true ?
            NumberButton(
              number: 'otro',
              onPress: signalEmitGlobal.ok,
            ) : const SizedBox(),
          ],
        )
      ],
    );
  }
}
