import 'package:shared_preferences/shared_preferences.dart';

class SpData {
  static final String themekey = "theme";
  static late SharedPreferences _preferences;

  static getPref() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setboolTheme(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  static bool getBoolPrefData(String key) {
    return _preferences.getBool(key) as bool;
  }
}
