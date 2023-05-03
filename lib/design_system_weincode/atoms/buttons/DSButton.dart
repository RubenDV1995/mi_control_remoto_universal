import 'package:flutter/material.dart';

class DSButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String? urlImage;

  const DSButton({
    required this.onPressed,
    required this.title,
    this.urlImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (urlImage != null)
                Image.network(
                  urlImage!,
                  height: 30,
                  width: 30,
                ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
