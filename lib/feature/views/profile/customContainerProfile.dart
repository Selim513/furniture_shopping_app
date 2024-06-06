import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.titile,
    required this.subTitle,
   required this.ontap,
  });
  final String titile;
  final String subTitle;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titile,
                    style: GetsmallFontsBlack(fontsize: 18),
                  ),
                  Text(
                    subTitle,
                    style: GetsmallFontsGrey(fontsize: 14),
                  )
                ],
              ),
              const Spacer(),
              const AppBarIcons(
                icon: 'rightArrow',
              )
            ],
          )),
    );
  }
}
