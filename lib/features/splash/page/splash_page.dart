import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/routes/routes.dart';

import '../../../design_system_weincode/foundations/foundation_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () => {
        _goTo(Routes.home),
      },
    );
  }

  void _goTo(String routeName) {
    Navigator.pushReplacementNamed(
      context,
      routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: WeincodeColorsFoundation.titleLargeLight,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset(
            'assets/images/png/logo_png.png',
          ),
        ),
      ),
    );
  }
}
