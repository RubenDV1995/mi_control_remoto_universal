import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String subtitle;
  const Subtitle({required this.subtitle, Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
