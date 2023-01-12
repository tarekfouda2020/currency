class SupportDataModel{

  final String currency;
  final String symbol;
  final String name;

  SupportDataModel({required this.currency, required this.symbol, required this.name});

  factory SupportDataModel.fromJson(Map<String, dynamic> json,String currency) {
    return SupportDataModel(
      currency: currency,
      name: json["name"],
      symbol: json["symbol"],
    );
  }

}