import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/register_login/register.dart';
import 'package:gap/gap.dart';

import '../widgets/custombutton.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/getStart.png',
                ),
                opacity: .9,
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Center(
            child: Column(
              children: [
                Flexible(
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
                ),
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
        ),
      ),
    );
  }
}
