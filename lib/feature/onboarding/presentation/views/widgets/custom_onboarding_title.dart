import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:gap/gap.dart';

class CustomOnboardingTitle extends StatelessWidget {
  const CustomOnboardingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'MAKE YOUR',
                  style: GetTiteldFontsGrey(),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                Text(
                  'HOME BEAUTIFUL',
                  style: GetTiteldFontsblack(),
                ),
              ],
            ),
            const Gap(30),
            Text(
              'The best simple place where you\n discover most wonderful furnitures\n and make your home beautiful',
              style: GetsmallFontsGrey(height: 2),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
