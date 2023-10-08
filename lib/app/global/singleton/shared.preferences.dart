import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static getInstasePreferences() async {
    // SharedPreferences.setMockInitialValues({});
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    return prefs;
  }
}
