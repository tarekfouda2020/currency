
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/res.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final bool? showBack;
  final bool? centerTitle;

  const DefaultAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.showBack = true,
    this.centerTitle,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: MyText(
        title: title,
        size: 18,
        color: MyColors.black,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: centerTitle??true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: showBack == true ? 55 : 10,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, size: 20, color: MyColors.black,),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
