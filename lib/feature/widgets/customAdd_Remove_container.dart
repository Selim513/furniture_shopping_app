import 'package:flutter/material.dart';

class CustomAdd_remove_Container extends StatelessWidget {
  const CustomAdd_remove_Container({
    super.key,
    required this.icon,
    required this.ontap,
    this.padding = const EdgeInsets.all(10),
  });
  final Widget icon;
  final Function()? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: padding,
        child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xffF0F0F0),
            ),
            child: icon),
      ),
    );
  }
}
