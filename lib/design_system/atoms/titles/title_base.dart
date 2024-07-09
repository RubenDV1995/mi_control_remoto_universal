import 'package:flutter/material.dart';

class TitleBase extends StatelessWidget {
  final String title;
  final double? size;
  final bool? lightTheme;

  const TitleBase({
    required this.title,
    Key? key,
    this.size,
    this.lightTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: size != null
          ? Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: size,
              )
          : lightTheme == true
              ? Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white)
              : Theme.of(context).textTheme.titleLarge,
    );
  }
}
