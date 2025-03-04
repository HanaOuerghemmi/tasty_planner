import 'package:intl/intl.dart';

class AppConstants {
  static const String preferredLangaugeKey = "preferredLangauge";
  static const String englishLanguageCode = "en";
  static const String frenchLanguageCode = "fr";
  static const String arabicLanguageCode = "ar";

  static const Map<String, String> supportedLanguages = {
    englishLanguageCode: 'English',
    frenchLanguageCode: 'Français',
    arabicLanguageCode: 'العربية',
  };

  static  String formatDate(DateTime date, String pattern, String locale) {
    return DateFormat(pattern, locale).format(date);
  }
}