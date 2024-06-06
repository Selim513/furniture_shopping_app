import 'package:flutter/widgets.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    this.height = 80,
    this.width = 80,
    super.key,
    required this.image,
  });
  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
