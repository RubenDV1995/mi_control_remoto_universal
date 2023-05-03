import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mi_control_remoto_universal/domain/repositories/settings_repository.dart';

import '../../utilities/to_bool.dart';

const String _keyDarkMode = 'darkMode';

class SettingsRepositoryImpl extends SettingsRepository {
  final FlutterSecureStorage _flutterSecureStorage;

  SettingsRepositoryImpl(this._flutterSecureStorage);

  @override
  Future<void> setThemeMode(bool value) async {
    await _flutterSecureStorage.write(
      key: _keyDarkMode,
      value: value.toString(),
    );
  }

  @override
  Future<bool> getThemeMode() async {
    final isDarkMode = await _flutterSecureStorage.read(
        key: _keyDarkMode,
    );
    return toBool(isDarkMode);
  }
}
