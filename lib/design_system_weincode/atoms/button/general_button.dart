import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/dundation_typo.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _GeneralButton(
      text: text,
      icon: icon,
      onPressed: onPressed,
      enabledColor: WeincodeColorsFoundation.primaryColor,
      disabledColor: WeincodeColorsFoundation.bgGray,
      enabledTextColor: WeincodeColorsFoundation.lightTextColors,
      disabledTextColor: WeincodeColorsFoundation.lightGreyTextColors,
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final VoidCallback? onPressed;

  const SecondaryButton(
      {Key? key, required this.text, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _GeneralButton(
      key: key,
      text: text,
      icon: icon,
      onPressed: onPressed,
      enabledColor: WeincodeColorsFoundation.primaryColor,
      disabledColor: WeincodeColorsFoundation.bgGray,
      enabledTextColor: WeincodeColorsFoundation.lightTextColors,
      disabledTextColor: WeincodeColorsFoundation.lightGreyTextColors,
      isOutlined: true,
    );
  }
}

class TertiaryButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final VoidCallback? onPressed;

  const TertiaryButton(
      {Key? key, required this.text, this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _GeneralButton(
      key: key,
      text: text,
      icon: icon,
      onPressed: onPressed,
      enabledColor: WeincodeColorsFoundation.primaryColor,
      disabledColor: WeincodeColorsFoundation.bgGray,
      enabledTextColor: WeincodeColorsFoundation.colorButtonSecondary,
      disabledTextColor: WeincodeColorsFoundation.lightGreyTextColors,
      enabledBorderColor: WeincodeColorsFoundation.primaryColor,
      disabledBorderColor: WeincodeColorsFoundation.primaryColor,
    );
  }
}

class _GeneralButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Icon? icon;
  final bool isOutlined;
  final Color enabledColor;
  final Color disabledColor;
  final Color enabledTextColor;
  final Color disabledTextColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;

  const _GeneralButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.enabledColor,
    required this.disabledColor,
    required this.enabledTextColor,
    required this.disabledTextColor,
    this.enabledBorderColor = WeincodeColorsFoundation.primaryColor,
    this.disabledBorderColor = WeincodeColorsFoundation.bgGray,
    this.isOutlined = false,
  }) : super(key: key);

  final TextStyle _btnTextStyle = WeincodeTypographyFoundation.buttonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledColor;
            }
            return enabledColor;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledTextColor;
            }
            return enabledTextColor;
          }),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
            if (states.contains(MaterialState.disabled)) {
              return RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                side: isOutlined
                    ? BorderSide(
                        color: disabledBorderColor,
                        width: 2,
                      )
                    : BorderSide.none,
              );
            }
            return RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              side: isOutlined
                  ? BorderSide(color: enabledBorderColor, width: 2)
                  : BorderSide.none,
            );
          }),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(
              129.0,
              20,
            ),
          )),
      child: icon == null
          ? Text(
              text,
              style: _btnTextStyle,
            )
          : buildTextAndIcon(icon!),
      onPressed: onPressed,
    );
  }

  Widget buildTextAndIcon(Icon icon) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: _btnTextStyle,
        )
      ],
    );
  }
}
