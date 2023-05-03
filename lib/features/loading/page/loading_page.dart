import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/atoms/titles/TDTitle.dart';
import 'package:mi_control_remoto_universal/features/loading/widget/loading_widget.dart';

class LoadingPage extends StatelessWidget {
  final String title;
  final double? height;

  const LoadingPage({
    Key? key,
    required this.title,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (height != null) {
      return SizedBox(
        height: height,
        width: double.infinity,
        child: Center(
          child: Content(
            title: title,
          ),
        ),
      );
    }
    return Expanded(
      child: Content(
        title: title,
      ),
    );
  }
}

class Content extends StatelessWidget {
  final String title;

  const Content({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LoadingWidget(),
        const SizedBox(
          height: 15,
        ),
        TDTitle(title: title),
      ],
    );
  }
}
