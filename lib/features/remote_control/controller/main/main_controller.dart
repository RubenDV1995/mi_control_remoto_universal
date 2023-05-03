import 'package:flutter/foundation.dart';
import 'package:mi_control_remoto_universal/domain/models/device_model.dart';

import '../samsung_signal_emmiter_controller.dart';
import 'main_signal_emmiter_controller.dart';

class MainController extends ChangeNotifier {
  List<Items> _devices = [];
  Items _currentItem = Items(
    id: '0',
    brand: 'generic',
    urlImage:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/2560px-Samsung_Logo.svg.png',
  );
  bool _isLoading = true;
  int _devicesLength = 0;
  late SignalEmmiterGlobal _signalEmmiterGlobal = SamsungRemoteSignalEmmiter();

  List<Items> get devices => _devices;

  Items get currentItem => _currentItem;

  bool get isLoading => _isLoading;

  int get devicesLength => _devicesLength;

  SignalEmmiterGlobal get signalEmmiterGlobal => _signalEmmiterGlobal;

  void getDevices(List<Items> _items) {
    _devicesLength = _items.length;
    _devices = _items;
    _isLoading = false;
    notifyListeners();
  }

  void changeDevice(Items device) {
    _currentItem = device;
    _isLoading = false;
    notifyListeners();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> setRemoteSignalEmmiter() async {
    try {
      _signalEmmiterGlobal = SamsungRemoteSignalEmmiter();
      print('Se asigno emmiter: $_signalEmmiterGlobal');
    } catch (e) {
      print(e);
    }
  }
}
