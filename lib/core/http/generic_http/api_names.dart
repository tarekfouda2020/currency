class ApiNames {
  static const String countryBaseUrl =
      "https://v6.exchangerate-api.com/v6/fab213b1e87fc41d0a9453ff/";
 static const String BaseUrl =
      "https://api.freecurrencyapi.com/v1/historical?apikey=5AG5AnL6th3LZtEKsdKRKrcnCHlDY9WeAaBsXWZk";

  static const String supported = "${countryBaseUrl}codes";
  static const String enriched = "${countryBaseUrl}enriched/GBP/";
}
// https://api.freecurrencyapi.com/v1/historical?apikey=&currencies=&date_from=&date_to=
// https://api.freecurrencyapi.com/v1/historical?apikey=5AG5AnL6th3LZtEKsdKRKrcnCHlDY9WeAaBsXWZk&currencies= &date_from= &date_to=