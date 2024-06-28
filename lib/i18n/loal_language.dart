import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx_todo/res/language.dart';

class LocalLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        Language.english.toString(): {
          "order": "my order",
          "name": "ankit",
          "msg": "how are you",
          "smalltext": "small text",
          "bigtext": "big text",
          "snakbar": "show snakbar",
          "diolg": "show diolg",
          "bottomSheet": "show bottomSheet",
          "back": "Back",
          "light_mode": "Light mode",
          "dark": "Dark mode"
        },
        Language.hindi.toString(): {
          "order": "मेरे आदेश",
          "name": "अंकित",
          "msg": "आप कैसे हैं",
          "smalltext": "छोटा पाठ",
          "bigtext": "बड़ा पाठ",
          "snakbar": "स्नैकबार दिखाएँ",
          "diolg": "डायोलग दिखाएँ",
          "bottomSheet": "बॉटमशीट दिखाएँ",
          "back": "वापस",
          "light_mode": "लाइट मोड",
          "dark": "डार्क मोड"
        },
      };
}
