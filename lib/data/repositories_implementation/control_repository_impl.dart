import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mi_control_remoto_universal/domain/repositories/control_repository.dart';

import '../../domain/models/device_model.dart';
import '../services/local/json/local_json_service.dart';

const String _keyDevice = 'device';

class ControlRepositoryImpl implements ControlRepository {
  final FlutterSecureStorage _flutterSecureStorage;
  final LocalJsonService _localJsonService;

  ControlRepositoryImpl({
    required FlutterSecureStorage flutterSecureStorage,
    required LocalJsonService localJsonService,
  })  : _flutterSecureStorage = flutterSecureStorage,
        _localJsonService = localJsonService;

  @override
  Future<void> setDeviceId(int idDevice) async {
    try {
      await _flutterSecureStorage.write(
        key: _keyDevice,
        value: idDevice.toString(),
      );
    } catch (e) {
      await _flutterSecureStorage.write(
        key: _keyDevice,
        value: '0',
      );
    }
  }

  @override
  Future<String> getDeviceId() async {
    final idDevice = await _flutterSecureStorage.read(
      key: _keyDevice,
    );
    return idDevice ?? '0';
  }

  @override
  Future<List<Items>> getDevicesFromLocalJson() async {
    List<Items> idDevice = await _localJsonService.request('devices.json');
    return idDevice;
  }
}
