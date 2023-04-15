import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_control_remoto_universal/core/remote_control/models/control_dto.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/samsung_signal_emmiter_controller.dart';
import 'package:mi_control_remoto_universal/features/remote_control/controller/lg_signal_emmiter_controller.dart';

enum ControlBrand { generic, samsung, lg }

Provider<SignalEmmiterGlobal> signalEmmiterControllerMain() {
  Provider<SignalEmmiterGlobal> currentProvider =
      Provider<SignalEmmiterGlobal>((ref) => SamsungRemoteSignalEmmiter());
  int value = 1;
  switch (value) {
    case 1:
      currentProvider =
          Provider<SignalEmmiterGlobal>((ref) => SamsungRemoteSignalEmmiter());
      break;
    case 2:
      currentProvider =
          Provider<SignalEmmiterGlobal>((ref) => RemoteSignalEmmiter());
      break;
  }
  return currentProvider;
}

abstract class SignalEmmiterGlobal {
  void turnOnOff();

  void home();

  void info();

  void navigateUp();

  void navigateDown();

  void navigateLeft();

  void navigateRight();

  void ok();

  void exit();

  void back();

  void volumeUp();

  void volumeDown();

  void mute();

  void nextChannel();

  void previousChannel();

  void backwards();

  void forward();

  void play();

  void pause();

  void red();

  void green();

  void yellow();

  void blue();

  void one();

  void two();

  void three();

  void four();

  void five();

  void six();

  void seven();

  void eight();

  void nine();

  void zero();

  void enter();

  void menu();

  void index();

  void caption();

  void audio();

  void lineIn();

  void hundred();

  void prog();

  void theme();

  void guide();
}

final modelControlProvider = StateNotifierProvider<ModelControl, ControlDTO>((ref) {
  return ModelControl();
});

class ModelControl extends StateNotifier<ControlDTO> {
  ModelControl() : super(ControlDTO(id: 0));

  late int currentTabIndex = 0;

  void setControlType(ControlBrand controlBrand){
    if(controlBrand == ControlBrand.generic) {
        state = ControlDTO(id: 0, brand: controlBrand);
        currentTabIndex = 0;
      }else if(controlBrand == ControlBrand.samsung){
        state = ControlDTO(id: 1, brand: controlBrand);
        currentTabIndex = 1;
      }else if(controlBrand == ControlBrand.lg){
        state =  ControlDTO(id: 2, brand: controlBrand);
        currentTabIndex = 2;
    }
  }

  int getTabIndex(){
    return currentTabIndex;
  }
}

