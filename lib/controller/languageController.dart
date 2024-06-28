import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/model/languageModel.dart';
import 'package:getx_todo/res/language.dart';

class Languagecontroller extends GetxController {
  Rx<Languagemodel> _language = Language.english.obs;
  Languagemodel get language => _language.value;

  setlanguage({required Languagemodel language}) {
    final db = Locale(language.languageCode, language.countryCode);
    Get.updateLocale(db);
    _language(language);
  }
}
