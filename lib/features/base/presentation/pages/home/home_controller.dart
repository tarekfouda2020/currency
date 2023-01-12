part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  GenericBloc<List<List<String>>> supportedCubit = GenericBloc([]);
  List<IconData> tabs = [
    Icons.home,
    Icons.map_outlined,
    Icons.face,
  ];

  Future<void> getSupported() async {
    await GetSupported()
        .call(false)
        .then((value) => supportedCubit.onUpdateData(value));
  }

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 3, vsync: ticker);
  }

  void animateTabsPages(int index, BuildContext context) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
    }
  }
}
