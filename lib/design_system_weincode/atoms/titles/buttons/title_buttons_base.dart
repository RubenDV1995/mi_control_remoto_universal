import 'package:flutter/material.dart';

class TitleButtonsBase extends StatelessWidget {
  final String title;
  final double? size;

  const TitleButtonsBase({
    required this.title,
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: size != null
          ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: size,
              )
          : Theme.of(context).textTheme.bodyLarge,
    );
  }
}
