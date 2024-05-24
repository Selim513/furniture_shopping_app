import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons(
      {super.key,
      required this.icon,
      required this.ontap,
      this.height = 24,
      this.width = 24});
  final String icon;
  final Function()? ontap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset('assets/icons/$icon.svg'),
      ),
    );
  }
}
