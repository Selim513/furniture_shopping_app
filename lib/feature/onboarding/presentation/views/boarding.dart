import 'package:flutter/material.dart';

import 'widgets/custom_onboarding_body.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingContainer(),
    );
  }
}
