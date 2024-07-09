import 'package:flutter/material.dart';

class ListviewBase extends StatelessWidget {
  final Widget child;
  final String title;

  const ListviewBase({
    required this.child,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(),
            child,
          ],
        ),
      ),
    );
  }
}
