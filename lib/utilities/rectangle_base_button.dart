import 'package:flutter/material.dart';

class RectangleBaseButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;

  const RectangleBaseButton({
    Key? key,
    required this.child,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
