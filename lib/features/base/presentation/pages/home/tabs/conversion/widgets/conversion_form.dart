part of 'conversion_widget_imports.dart';

class ConversionForm extends StatelessWidget {
  final ConversionController controller;
  const ConversionForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Base Country",
            color: MyColors.black,
            size: 13,
          ),
          DropdownTextField<String>(
            selectedItem: controller.baseCurrency,
            margin: const EdgeInsets.symmetric(vertical: 5),
            itemAsString: (model) => model,
            validate: (value) => validateDropDown(value),
            onChange: (item) => controller.onchangeBaseCurrency(item),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            onFind: (string) => controller.getSupported(),
            title: "Base Country",
            hint: "",
          ),
          const SizedBox(height: 20),
          MyText(
            title: "Target Currency",
            color: MyColors.black,
            size: 13,
          ),
          DropdownTextField<String>(
            selectedItem: controller.targetCurrency,
            margin: const EdgeInsets.symmetric(vertical: 5),
            itemAsString: (model) => model,
            validate: (value) => validateDropDown(value),
            onChange: (item) => controller.onchangeTargetCurrency(item),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            onFind: (string) => controller.getSupported(),
            title: "Target Currency",
            hint: "",
          ),
          DefaultButton(
            title: "Convert",
            margin: const EdgeInsets.symmetric( vertical: 20),
            onTap: ()=> controller.convert(),
          ),
        ],
      ),
    );
  }
}
