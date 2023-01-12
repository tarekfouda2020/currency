part of 'historical_page_imports.dart';

class HistoricalPage extends StatefulWidget {
  const HistoricalPage({Key? key}) : super(key: key);

  @override
  State<HistoricalPage> createState() => _HistoricalPageState();
}

class _HistoricalPageState extends State<HistoricalPage> {
  final HistoricalController controller = HistoricalController();

  @override
  void initState() {
    controller.initDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Historical", showBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          BuildHistoricalForm(controller: controller),
          HistoryDataView(controller: controller),
        ]),
      ),
    );
  }
}
