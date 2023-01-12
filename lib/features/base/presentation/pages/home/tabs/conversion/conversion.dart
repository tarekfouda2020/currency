part of 'conversion_imports.dart';

class Conversion extends StatefulWidget {
  const Conversion({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {
  final ConversionController controller = ConversionController();

  @override
  void initState() {
    controller.initDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Conversion", showBack: false),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          ConversionForm(controller: controller),
          const SizedBox(height: 30),
          BlocBuilder<GenericBloc<String>, GenericState<String>>(
            bloc: controller.valueCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                if (state.data.isEmpty) {
                  return const SizedBox.shrink();
                }
                return Center(
                  child: Column(
                    children: [
                      MyText(
                        title: state.data,
                        color: MyColors.black,
                        size: 30,
                      ),
                      MyText(
                        title: controller.targetCurrency ?? "",
                        color: MyColors.black,
                        size: 30,
                      ),
                    ],
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(
                  color: MyColors.black,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
