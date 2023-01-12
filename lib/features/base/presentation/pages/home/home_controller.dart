part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<IconData> tabs = [
    Icons.home,
    Icons.history,
    Icons.swap_horiz_outlined,
  ];



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
