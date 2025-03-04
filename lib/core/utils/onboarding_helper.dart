import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getOnboardingStatus() async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  return sp.getBool('isShowOnboarding') ?? false;
}
