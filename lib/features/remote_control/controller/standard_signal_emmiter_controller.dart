import 'package:mi_control_remoto_universal/data/services/local/generic_signal_codes.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/utilities/emmit.dart';

class StandardRemoteSignalEmmiter implements SignalEmmiterGlobal {
  @override
  void turnOnOff() {
    emmit(GenericSignalCodes.power);
  }

  @override
  void inCycle() {
    emmit(GenericSignalCodes.inCycle);
  }

  @override
  void one() {
    emmit(GenericSignalCodes.one);
  }

  @override
  void two() {
    emmit(GenericSignalCodes.two);
  }

  @override
  void three() {
    emmit(GenericSignalCodes.three);
  }

  @override
  void four() {
    emmit(GenericSignalCodes.four);
  }

  @override
  void five() {
    emmit(GenericSignalCodes.five);
  }

  @override
  void six() {
    emmit(GenericSignalCodes.six);
  }

  @override
  void seven() {
    emmit(GenericSignalCodes.seven);
  }

  @override
  void eight() {
    emmit(GenericSignalCodes.eight);
  }

  @override
  void nine() {
    emmit(GenericSignalCodes.nine);
  }

  @override
  void zero() {
    emmit(GenericSignalCodes.zero);
  }

  @override
  void ok() {
    emmit(GenericSignalCodes.ok);
  }

  @override
  void nextChannel() {
    emmit(GenericSignalCodes.nextChannel);
  }

  @override
  void previousChannel() {
    emmit(GenericSignalCodes.previousChannel);
  }

  @override
  void volumeUp() {
    emmit(GenericSignalCodes.volumeUp);
  }

  @override
  void volumeDown() {
    emmit(GenericSignalCodes.volumeDown);
  }

  @override
  void mute() {
    emmit(GenericSignalCodes.mute);
  }

  @override
  void guide() {
    emmit(GenericSignalCodes.guide);
  }

  @override
  void jump() {
    emmit(GenericSignalCodes.jump);
  }

  @override
  void menu() {
    emmit(GenericSignalCodes.menu);
  }

  @override
  void navigateUp() {
    emmit(GenericSignalCodes.navigateUp);
  }

  @override
  void navigateDown() {
    emmit(GenericSignalCodes.navigateDown);
  }

  @override
  void navigateLeft() {
    emmit(GenericSignalCodes.navigateLeft);
  }

  @override
  void navigateRight() {
    emmit(GenericSignalCodes.navigateRight);
  }

  @override
  void forward() {
    emmit(GenericSignalCodes.fastForward);
  }

  @override
  void interests() {
    emmit(GenericSignalCodes.interests);
  }

  @override
  void options() {
    emmit(GenericSignalCodes.options);
  }

  @override
  void backwards() {
    emmit(GenericSignalCodes.fastBackward);
  }

  @override
  void play() {
    emmit(GenericSignalCodes.dss);
  }

  @override
  void pause() {
    emmit(GenericSignalCodes.display);
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
