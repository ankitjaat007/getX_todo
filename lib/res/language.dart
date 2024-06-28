import 'package:getx_todo/model/languageModel.dart';

class Language {
  static Languagemodel english = Languagemodel(
      languageName: "English", languageCode: 'en', countryCode: "US");
  static Languagemodel hindi = Languagemodel(
      languageName: "Hindi", languageCode: 'hi', countryCode: "IN");

  static List<Languagemodel> language = [english, hindi];
}
