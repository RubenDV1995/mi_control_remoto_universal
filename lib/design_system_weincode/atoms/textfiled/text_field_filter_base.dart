import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

class TextFieldFilterBase extends StatelessWidget {
  final void Function(String) onChanged;

  const TextFieldFilterBase({
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: Theme.of(context).textTheme.titleMedium,
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            width: 1,
            color: WeincodeColorsFoundation.textColorButtonDarkMode,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            width: 1,
            color: WeincodeColorsFoundation.textColorButtonDarkMode,
          ),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: WeincodeColorsFoundation.textColorButtonDarkMode,
        ),
        filled: true,
        fillColor: Colors.grey[200]!.withOpacity(0.1),
      ),
    );
  }
}
