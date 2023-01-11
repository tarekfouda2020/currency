part of 'home_widgets_imports.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  final HomeController controller;

  const BuildBottomNavigationBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: controller.homeTabCubit,
      builder: (context, state) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: 3,
          tabBuilder: (int index, bool isActive) {
            return BuildTabIcon(
              index: index,
              active: isActive,
              controller: controller,
            );
          },
          backgroundColor: MyColors.white,
          splashColor: MyColors.primary,
          activeIndex: state.data,
          gapLocation: GapLocation.none,
          splashSpeedInMilliseconds: 300,
          height: 50,
          onTap: (index) => controller.animateTabsPages(index, context),
        );
      },
    );
  }
}
