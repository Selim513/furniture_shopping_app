import 'package:flutter/material.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer({
    super.key,
    this.padding = const EdgeInsets.all(20),
    required this.widget,
  });
  final Widget widget;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0.5, 0.5),
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.1))
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: const Color(0xffFFFFFF),
        ),
        child: widget);
  }
}
