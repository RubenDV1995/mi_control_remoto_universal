import 'package:mi_control_remoto_universal/features/remote_control/controller/main/main_signal_emmiter_controller.dart';

import '../../../data/services/local/lg_signal_codes.dart';
import '../../../utilities/emmit.dart';

class RemoteSignalEmmiter implements SignalEmmiterGlobal {
  @override
  void backwards() {
    emmit(LgSignalCodes.fastBackward);
  }

  @override
  void forward() {
    emmit(LgSignalCodes.fastForward);
  }

  @override
  void home() {
    emmit(LgSignalCodes.home);
  }

  @override
  void info() {
    emmit(LgSignalCodes.info);
  }

  @override
  void mute() {
    emmit(LgSignalCodes.mute);
  }

  @override
  void navigateDown() {
    emmit(LgSignalCodes.navigateDown);
  }

  @override
  void navigateLeft() {
    emmit(LgSignalCodes.navigateLeft);
  }

  @override
  void navigateRight() {
    emmit(LgSignalCodes.navigateRight);
  }

  @override
  void navigateUp() {
    emmit(LgSignalCodes.navigateUp);
  }

  @override
  void nextChannel() {
    emmit(LgSignalCodes.channelUp);
  }

  @override
  void ok() {
    emmit(LgSignalCodes.ok);
  }

  @override
  void play() {
    emmit(LgSignalCodes.play);
  }

  @override
  void previousChannel() {
    emmit(LgSignalCodes.channelDown);
  }

  @override
  void pause() {
    emmit(LgSignalCodes.pause);
  }

  @override
  void turnOnOff() {
    emmit(LgSignalCodes.turnOnOff);
  }

  @override
  void volumeDown() {
    emmit(LgSignalCodes.volumeDown);
  }

  @override
  void volumeUp() {
    emmit(LgSignalCodes.volumeUp);
  }

  @override
  void back() {
    emmit(LgSignalCodes.back);
  }

  @override
  void exit() {
    emmit(LgSignalCodes.exit);
  }

  @override
  void blue() {
    emmit(LgSignalCodes.blue);
  }

  @override
  void green() {
    emmit(LgSignalCodes.green);
  }

  @override
  void red() {
    emmit(LgSignalCodes.red);
  }

  @override
  void yellow() {
    emmit(LgSignalCodes.yellow);
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}