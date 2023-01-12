part of 'historical_widgets_imports.dart';

class HistoryDataView extends StatelessWidget {
  final HistoricalController controller;

  const HistoryDataView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<HistoryDate>>,
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
            return const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: CircularProgressIndicator(
                  color: MyColors.black,
                ),
              ),
            );
          }
        });
  }
}
