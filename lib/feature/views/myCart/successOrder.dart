import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/home/bottomNavBar.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class SuccessOrderView extends StatelessWidget {
  const SuccessOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Success!',
                style: GetprimaryTitleFontBlack(fontsize: 36),
              ),
              const Gap(20),
              Stack(
                children: [
                  Container(
                    width: 269,
                    height: 260,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background.png'))),
                    child: SvgPicture.asset('assets/items.svg'),
                  ),
                  const Positioned(
                    bottom: 1,
                    right: 20,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.done_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              const Gap(30),
              Text(
                  'Your order will be delivered soon.\nThank you for choosing our app!',
                  style: GetBlackSmallFont()),
              const Gap(50),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: CustomElevatedButton(
                    onPressed: () {}, textName: 'Track your orders'),
              ),
              const Gap(30),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: CustomElevatedButton(
                  fontColor: Colors.black,
                  bgColor: Colors.white,
                  onPressed: () {
                    gotoPushReplacement(context, const BottomNavBarView());
                  },
                  textName: 'BACK TO HOME',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
