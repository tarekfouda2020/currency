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
          BlocBuilder<GenericBloc<List<HistoryDate>>,
                  GenericState<List<HistoryDate>>>(
              bloc: controller.historicalCubit,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return Flexible(
                    child: ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (cxt, index) {
                        return Container(
                          padding: const EdgeInsets.all(7),
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: MyColors.greyWhite.withOpacity(.1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                  title: state.data[index].date,
                                  color: MyColors.black,
                                  size: 13),
                              Column(
                                children: List.generate(
                                    state.data[index].data.length,
                                    (i) => Row(
                                          children: [
                                            MyText(
                                                title: state
                                                    .data[index].data[i].value,
                                                color: MyColors.black,
                                                size: 9),
                                            const SizedBox(width: 10),
                                            MyText(
                                                title: state
                                                    .data[index].data[i].code,
                                                color: MyColors.black,
                                                size: 9),
                                          ],
                                        )),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              })
        ]),
      ),
    );
  }
}
