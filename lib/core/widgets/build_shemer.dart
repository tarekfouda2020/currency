import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:shimmer/shimmer.dart';


class BuildShimmerView extends StatelessWidget {
  final double? width;
  final double height;
  final double? borderRadius;
  final BoxShape? boxShape;
  final EdgeInsets? margin;

  const BuildShimmerView(
      {Key? key,
      this.width,
      this.boxShape,
      this.margin,
      required this.height,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MyColors.offWhite,
      highlightColor: MyColors.white,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height,
        margin: margin ?? const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.offWhite,
            shape: boxShape ?? BoxShape.rectangle,
            borderRadius: BorderRadius.circular(borderRadius ?? 5)),
      ),
    );
  }
}
