import 'package:flutter/material.dart';

import '../titles/title_base.dart';

class BadgeBase extends StatelessWidget {
  final String title;
  final Color color;

  const BadgeBase({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 1.0,
        ),
        child: TitleBase(
          title: title,
          size: 16,
        ),
      ),
    );
  }
}
