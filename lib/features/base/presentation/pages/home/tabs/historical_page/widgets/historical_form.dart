part of 'historical_widgets_imports.dart';

class BuildHistoricalForm extends StatelessWidget {
  final HistoricalController controller;

  const BuildHistoricalForm({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(title: "Currencies", color: MyColors.black, size: 13),
                  GenericTextField(
                    controller: controller.currencies,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.text,
                    action: TextInputAction.next,
                    validate: (v) {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
        )
      ],
    );
  }
}
