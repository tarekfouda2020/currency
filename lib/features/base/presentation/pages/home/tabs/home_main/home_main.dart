part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  HomeMainController controller = HomeMainController();

  @override
  void initState() {
    controller.getSupported();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Currency", showBack: false),
      body: BlocBuilder<GenericBloc<List<SupportDataModel>>,
              GenericState<List<SupportDataModel>>>(
          bloc: controller.supportedCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return ListView(
                children: List.generate(
                  state.data.length,
                  (index) {
                    return BuildCurrencyDetailsItem(
                      model: state.data[index],
                      controller: controller,
                    );
                  },
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: MyColors.black,
                ),
              );
            }
          }),
    );
  }
}
