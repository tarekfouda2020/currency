part of 'home_main_widgets_imports.dart';

class BuildCurrencyDetailsItem extends StatelessWidget {
  final SupportDataModel model;
  final HomeMainController controller;

  const BuildCurrencyDetailsItem(
      {Key? key, required this.model, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MyColors.greyWhite.withOpacity(.1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            controller.currencyToEmoji(model.currency),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: MyText(title: model.name, color: MyColors.black, size: 14),
            ),
          ),
          MyText(title: model.symbol, color: MyColors.black, size: 14)
        ],
      ),
    );
  }
}
