import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static getInstasePreferences() async {
    // SharedPreferences.setMockInitialValues({});
    // ignore: no_leading_underscores_for_local_identifiers
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    return prefs;
  }
}
