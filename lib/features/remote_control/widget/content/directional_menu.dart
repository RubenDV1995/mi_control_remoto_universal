import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../design_system_weincode/foundations/foundation_colors.dart';
import '../../../../utilities/circular_shadow.dart';
import '../../controller/main/main_signal_emmiter_controller.dart';
import '../arrow_button.dart';
import '../ok_button.dart';

class DirectionalMenu extends StatelessWidget {
  final SignalEmmiterGlobal signalEmmiterGlobal;

  const DirectionalMenu({
    required this.signalEmmiterGlobal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularShadow(
      child: ClipOval(
        child: ColoredBox(
          color: WeincodeColorsFoundation.backgroundColorButtonsDevices,
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsetsDirectional.zero,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: [
              const SizedBox.shrink(),
              ArrowButton(
                icon: UniconsLine.angle_up,
                onPress: signalEmmiterGlobal.navigateUp,
              ),
              const SizedBox.shrink(),
              ArrowButton(
                icon: UniconsLine.angle_left,
                onPress: signalEmmiterGlobal.navigateLeft,
              ),
              OkButton(
                onPress: signalEmmiterGlobal.ok,
              ),
              ArrowButton(
                icon: UniconsLine.angle_right,
                onPress: signalEmmiterGlobal.navigateRight,
              ),
              const SizedBox.shrink(),
              ArrowButton(
                icon: UniconsLine.angle_down,
                onPress: signalEmmiterGlobal.navigateDown,
              ),
              const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff2c2e30).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2777778, 0);
    path_1.cubicTo(
        size.width * 0.2777778,
        size.height * 0.2083333,
        size.width * 0.1388889,
        size.height * 0.4166667,
        0,
        size.height * 0.4166667);
    path_1.cubicTo(
        size.width * -0.1388889,
        size.height * 0.4166667,
        size.width * -0.2777778,
        size.height * 0.2083333,
        size.width * -0.2777778,
        0);
    path_1.cubicTo(
        size.width * -0.2777778,
        size.height * -0.2083333,
        size.width * -0.1388889,
        size.height * -0.4166667,
        0,
        size.height * -0.4166667);
    path_1.cubicTo(
        size.width * 0.1388889,
        size.height * -0.4166667,
        size.width * 0.2777778,
        size.height * -0.2083333,
        size.width * 0.2777778,
        0);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffff6600).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
