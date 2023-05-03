abstract class SettingsRepository {
  Future<void> setThemeMode(
    bool value,
  );

  Future<bool> getThemeMode();
}
