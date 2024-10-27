import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/register.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';

import 'custom_onboarding_title.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Center(
        child: Column(
          children: [
            CustomOnboardingTitle(),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: SizedBox(
                  height: 54,
                  width: 160,
                  child: CustomElevatedButton(
                    textName: 'Get Started',
                    onPressed: () {
                      gotoPushReplacement(context, const RegisterView());
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
