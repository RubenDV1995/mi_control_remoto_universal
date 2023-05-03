import 'package:flutter/material.dart';

class TDTitle extends StatelessWidget {
  final String title;

  const TDTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
