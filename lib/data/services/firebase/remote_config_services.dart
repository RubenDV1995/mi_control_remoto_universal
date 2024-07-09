import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../../../domain/models/device_model.dart';
import '../../../utilities/constants/constants.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final RemoteConfigSettings _remoteConfigSettings;

  RemoteConfigService({
    required FirebaseRemoteConfig firebaseRemoteConfig,
    required RemoteConfigSettings remoteConfigSettings,
  })  : _firebaseRemoteConfig = firebaseRemoteConfig,
        _remoteConfigSettings = remoteConfigSettings;

  Future<void> init() async {
    try {
      _firebaseRemoteConfig.ensureInitialized();
      await _firebaseRemoteConfig.setConfigSettings(
          _remoteConfigSettings
      );
      _firebaseRemoteConfig.fetchAndActivate();
    } on FirebaseException catch (e) {
      print('lblErrorFirebase $e');
    }
  }

  List<Items> getEventDevicesJson() {
    List<Items> _listDevices = [];
    try {
      final result = _firebaseRemoteConfig.getString(lblRemoteConfigDevices);
      if (result.isNotEmpty) {
        Map<String, dynamic> valueMap = json.decode(result);
        final data = DeviceModel.fromJson(valueMap);
        _listDevices = data.items ?? [];
        return _listDevices;
      }
    } catch (e) {
      _listDevices = [];
    }
    return _listDevices;
  }
}
