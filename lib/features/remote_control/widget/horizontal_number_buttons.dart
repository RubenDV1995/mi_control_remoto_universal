import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/features/remote_control/widget/number_button.dart';

class HorizontalNumberButtons extends StatelessWidget {
  final WidgetRef ref;
  final ProviderBase signalEmmiter;

  const HorizontalNumberButtons({
    Key? key,
    required this.ref,
    required this.signalEmmiter
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
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 2 ',
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 3 ',
              onPress: ref.read(signalEmmiter).info,
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
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 5 ',
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 6 ',
              onPress: ref.read(signalEmmiter).info,
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
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 8 ',
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 9 ',
              onPress: ref.read(signalEmmiter).info,
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
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: ' 0 ',
              onPress: ref.read(signalEmmiter).info,
            ),
            NumberButton(
              number: 'otro',
              onPress: ref.read(signalEmmiter).info,
            ),
          ],
        )
      ],
    );
  }
}