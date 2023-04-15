import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/text/ds_secondary_text.dart';
import 'package:mi_control_remoto_universal/features/loading/widget/loading_widget.dart';

class LoadingPage extends StatelessWidget {
  final String title;
  const LoadingPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LoadingWidget(),
          const SizedBox(
            height: 15,
          ),
          DSSecondaryText(title: title),
        ],
      ),
    );
  }
}
