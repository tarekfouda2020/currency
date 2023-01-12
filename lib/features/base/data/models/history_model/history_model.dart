



class HistoryDate {
  final String date;
  final List<HistoryVale> data;

  HistoryDate({required this.date, required this.data});

  factory HistoryDate.fromJson(Map<String, dynamic> json,String date) {
    final List<HistoryVale> items = [];
    json.forEach((key, value) {
        var item = HistoryVale(value: key, code: value.toString());
        items.add(item);
      });
    return HistoryDate(
        date: date,
        data: items,
    );
  }
}

class HistoryVale {
  final String code;
  final String value;

  HistoryVale({required this.code, required this.value});
}
