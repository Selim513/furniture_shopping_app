import 'package:flutter/material.dart';

import 'onboarding_items.dart';

class OnBoardingContainer extends StatelessWidget {
  const OnBoardingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/getStart.png',
              ),
              opacity: .9,
              fit: BoxFit.cover)),
      child: OnboardingItem(),
    );
  }
}
