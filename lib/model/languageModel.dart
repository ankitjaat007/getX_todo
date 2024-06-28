class Languagemodel {
  final String languageName;
  final String languageCode;
  final String countryCode;
  Languagemodel(
      {required this.languageName,
      required this.languageCode,
      required this.countryCode});

  @override
  String toString() {
    return "${languageCode}_$countryCode";
  }
}
