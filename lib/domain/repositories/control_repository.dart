import 'package:mi_control_remoto_universal/domain/models/device_model.dart';

abstract class ControlRepository {
  Future<void> setDeviceId(int idDevice);

  Future<String> getDeviceId();

  Future<List<Items>> getDevicesFromLocalJson();
}
