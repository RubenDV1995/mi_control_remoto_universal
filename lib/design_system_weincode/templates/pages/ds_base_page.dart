import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/text/ds_primary_text.dart';

class DSBasePage extends StatelessWidget {
  final String? title;
  final Widget child;

  const DSBasePage({Key? key, this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title != null
              ? Center(
                  child: DSPrimaryText(title: title!),
                )
              : const SizedBox.shrink(),
          child
        ],
      ),
    );
  }
}
