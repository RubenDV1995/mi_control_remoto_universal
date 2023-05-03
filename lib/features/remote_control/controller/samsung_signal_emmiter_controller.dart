import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/utilities/emmit.dart';

import '../../../data/services/local/samsung_signal_codes.dart';

class SamsungRemoteSignalEmmiter implements SignalEmmiterGlobal {
  @override
  void turnOnOff() {
    emmit(SamsungSignalCodes.turnOnOff);
  }

  @override
  void one() {
    emmit(SamsungSignalCodes.one);
  }

  @override
  void two() {
    emmit(SamsungSignalCodes.two);
  }

  @override
  void three() {
    emmit(SamsungSignalCodes.three);
  }

  @override
  void four() {
    emmit(SamsungSignalCodes.four);
  }

  @override
  void five() {
    emmit(SamsungSignalCodes.five);
  }

  @override
  void six() {
    emmit(SamsungSignalCodes.six);
  }

  @override
  void seven() {
    emmit(SamsungSignalCodes.seven);
  }

  @override
  void eight() {
    emmit(SamsungSignalCodes.eight);
  }

  @override
  void nine() {
    emmit(SamsungSignalCodes.nine);
  }

  @override
  void zero() {
    emmit(SamsungSignalCodes.zero);
  }

  @override
  void enter() {
    emmit(SamsungSignalCodes.enter);
  }

  @override
  void nextChannel() {
    emmit(SamsungSignalCodes.nextChannel);
  }

  @override
  void previousChannel() {
    emmit(SamsungSignalCodes.previousChannel);
  }

  @override
  void volumeUp() {
    emmit(SamsungSignalCodes.volumeUp);
  }

  @override
  void volumeDown() {
    emmit(SamsungSignalCodes.volumeDown);
  }

  @override
  void menu() {
    emmit(SamsungSignalCodes.menu);
  }

  @override
  void navigateUp() {
    emmit(SamsungSignalCodes.navigateUp);
  }

  @override
  void navigateDown() {
    emmit(SamsungSignalCodes.navigateDown);
  }

  @override
  void navigateLeft() {
    emmit(SamsungSignalCodes.navigateLeft);
  }

  @override
  void navigateRight() {
    emmit(SamsungSignalCodes.navigateRight);
  }

  @override
  void mute() {
    emmit(SamsungSignalCodes.mute);
  }

  @override
  void index() {
    emmit(SamsungSignalCodes.index);
  }

  @override
  void caption() {
    emmit(SamsungSignalCodes.caption);
  }

  @override
  void audio() {
    emmit(SamsungSignalCodes.audio);
  }

  @override
  void lineIn() {
    emmit(SamsungSignalCodes.lineIn);
  }

  @override
  void exit() {
    emmit(SamsungSignalCodes.exit);
  }

  @override
  void hundred() {
    emmit(SamsungSignalCodes.hundred);
  }

  @override
  void prog() {
    emmit(SamsungSignalCodes.prog);
  }

  @override
  void theme() {
    emmit(SamsungSignalCodes.theme);
  }

  @override
  void guide() {
    emmit(SamsungSignalCodes.guide);
  }

  @override
  void info() {
    emmit(SamsungSignalCodes.info);
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
