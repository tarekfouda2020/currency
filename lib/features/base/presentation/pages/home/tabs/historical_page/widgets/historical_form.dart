part of 'historical_widgets_imports.dart';

class BuildHistoricalForm extends StatelessWidget {
  final HistoricalController controller;

  const BuildHistoricalForm({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                        title: "Base Country", color: MyColors.black, size: 13),
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
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(title: "Target Currency", color: MyColors.black, size: 13),
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
                    BlocConsumer<GenericBloc<String>, GenericState<String>>(
                      bloc: controller.fromDateCubit,
                      listener: (context, state) {
                        controller.fromDate.text = state.data;
                      },
                      builder: (context, state) {
                        return GenericTextField(
                          controller: controller.fromDate,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          fieldTypes: FieldTypes.clickable,
                          type: TextInputType.text,
                          action: TextInputAction.next,
                          validate: (value) => value?.validateEmpty(),
                          onTab: () => controller.selectDate(context, controller.fromDateCubit),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        );
                      },
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
                    BlocConsumer<GenericBloc<String>, GenericState<String>>(
                      bloc: controller.toDateCubit,
                      listener: (context, state) {
                        controller.toDate.text = state.data;
                      },
                      builder: (context, state) {
                        return GenericTextField(
                          controller: controller.toDate,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          fieldTypes: FieldTypes.clickable,
                          type: TextInputType.text,
                          action: TextInputAction.next,
                          validate: (value) => value?.validateEmpty(),
                          onTab: () => controller.selectDate(context, controller.toDateCubit),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        );
                      },
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
      ),
    );
  }
}
