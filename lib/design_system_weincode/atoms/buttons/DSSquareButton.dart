import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

class DSSquareButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final String? urlImage;

  const DSSquareButton({
    required this.onPressed,
    required this.title,
    this.urlImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (urlImage != null)
                Container(
                  decoration: const BoxDecoration(
                    color: WeincodeColorsFoundation.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.network(
                      urlImage!,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          color:
                              WeincodeColorsFoundation.textColorButtonDarkMode,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        '21',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
