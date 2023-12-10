// ignore_for_file: always_use_package_imports

import '../locale/ar.dart';
import '../locale/en.dart';
import '../locale/it.dart';

class LocaleController {
  final String locale;

  LocaleController({this.locale = "it"});

  String translate(String text) {
    String? translationText;
    if (locale.toLowerCase().trim() == "en") {
      translationText = en[text];
    } else if (locale.toLowerCase().trim() == "ar") {
      translationText = ar[text];
    } else if (locale.toLowerCase().trim() == "it") {
      translationText = it[text];
    }
    
    return translationText ?? text;
  }
}
