import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future<void> setFirstTime() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isFirstTime", false);
  }

  static Future<bool> getIsFirstTime() async {
    var prefs = await SharedPreferences.getInstance();
    bool respons = await prefs.getBool("isFirstTime") ?? true;
    return respons;
  }
}