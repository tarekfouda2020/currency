part of 'historical_page_imports.dart';

class HistoricalPage extends StatefulWidget {
  const HistoricalPage({Key? key}) : super(key: key);

  @override
  State<HistoricalPage> createState() => _HistoricalPageState();
}

class _HistoricalPageState extends State<HistoricalPage> {
  HistoricalController controller = HistoricalController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Historical", showBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                        title: "Base Country", color: MyColors.black, size: 13),
                    GenericTextField(
                      controller: controller.baseCurrency,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      fieldTypes: FieldTypes.normal,
                      type: TextInputType.text,
                      action: TextInputAction.next,
                      validate: (v) {},
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                        title: "Currencies", color: MyColors.black, size: 13),
                    GenericTextField(
                      controller: controller.currencies,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      fieldTypes: FieldTypes.normal,
                      type: TextInputType.text,
                      action: TextInputAction.next,
                      validate: (v) {},
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(title: "From Date", color: MyColors.black, size: 13),
                    GenericTextField(
                      controller: controller.fromDate,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      fieldTypes: FieldTypes.normal,
                      type: TextInputType.text,
                      action: TextInputAction.next,
                      validate: (v) {},
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
             const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(title: "To Date", color: MyColors.black, size: 13),
                    GenericTextField(
                      controller: controller.toDate,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      fieldTypes: FieldTypes.normal,
                      type: TextInputType.text,
                      action: TextInputAction.next,
                      validate: (v) {},
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          DefaultButton(
            textColor: MyColors.white,
            color: MyColors.black,
            width: 100,
            title: "Send",
            onTap: () => controller.getHistorical(),
          ),
        ]),
      ),
    );
  }
}
