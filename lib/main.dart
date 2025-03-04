import 'package:flutter/material.dart';
import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  bool isShowOnboarding = await getOnboardingStatus();
  
  runApp(AppProvider(isShowOnboarding: isShowOnboarding));
}
