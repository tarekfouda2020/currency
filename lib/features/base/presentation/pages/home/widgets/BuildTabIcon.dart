part of 'home_widgets_imports.dart';

class BuildTabIcon extends StatelessWidget {
  final int index;
  final bool active;
  final HomeController controller;

  const BuildTabIcon(
      {required this.index, required this.active, required this.controller});

  @override
  Widget build(BuildContext context) {
    Color color = active ? MyColors.black : MyColors.grey;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Icon(
        controller.tabs[index],
        size: 30,
        color: color,
      ),
    );
  }
}
