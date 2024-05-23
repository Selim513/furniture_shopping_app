import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.ontap,
  });
  final Widget icon;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            backgroundColor: const Color(0xffF0F0F0)),
        onPressed: ontap,
        icon: icon);
  }
}
