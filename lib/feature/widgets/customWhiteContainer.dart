import 'package:flutter/material.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(1, 1),
                blurRadius: 2,
                spreadRadius: 3,
                color: Colors.grey.withOpacity(0.2))
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: const Color(0xffFFFFFF),
        ),
        child: widget);
  }
}
