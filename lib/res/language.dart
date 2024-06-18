import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
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
        "hi_IN": {
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
        }
      };
}
