import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/domain/models/device_model.dart';

import '../lg_signal_emit_controller.dart';
import '../samsung_signal_emit_controller.dart';
import '../standard_signal_emit_controller.dart';
import 'main_signal_emit_controller.dart';

class MainController extends ChangeNotifier {
  List<Items> _devices = [];
  Items _currentItem = Items(
    id: '0',
    brand: 'generic',
    urlImage:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/2560px-Samsung_Logo.svg.png',
    numberButtons: 0,
  );
  bool _isLoading = true;
  int _devicesLength = 0;
  late SignalEmitGlobal _signalEmitGlobal = SamsungRemoteSignalEmit();

  List<Items> get devices => _devices;
  Items get currentItem => _currentItem;
  bool get isLoading => _isLoading;
  int get devicesLength => _devicesLength;
  SignalEmitGlobal get signalEmitGlobal => _signalEmitGlobal;

  void getDevices(List<Items> _items) {
    _devicesLength = _items.length;
    _devices = _items;
    _isLoading = false;
    notifyListeners();
  }

  void setDevice(Items device) {
    _currentItem = device;
    _signalEmitGlobal = setRemoteSignalEmit(
      idDevice: device.id,
    );
    _isLoading = false;
    notifyListeners();
  }

  void setDeviceById({
    required String deviceId,
    required List<Items> items,
  }) {
    _signalEmitGlobal = setRemoteSignalEmit(
      idDevice: deviceId,
    );
    _currentItem = getItemById(
      deviceId: deviceId,
      items: items,
    );
    _isLoading = false;
    notifyListeners();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  SignalEmitGlobal setRemoteSignalEmit({
    required String idDevice,
  }) {
    if (idDevice == '2') {
      return SamsungRemoteSignalEmit();
    }
    if (idDevice == '3') {
      return LgRemoteSignalEmit();
    }
    return StandardRemoteSignalEmit();
  }

  Items getItemById({
    required String deviceId,
    required List<Items> items,
  }) {
    if (deviceId == '2') {
      return items[1];
    }
    if (deviceId == '3') {
      return items[2];
    }
    return items[0];
  }
}
