import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/myCart/successOrder.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            )),
        title: const Text('Check out'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Shipping Address',
                  style: GetsmallFontsGrey(fontweight: FontWeight.w600),
                ),
                const Spacer(),
                AppBarIcons(
                  icon: 'edit-2',
                  ontap: () {},
                ),
              ],
            ),
            const Gap(10),
            CustomWhiteContainer(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmed Selim',
                    style: GetsmallFontsBlack(fontsize: 18),
                  ),
                  const Divider(
                    endIndent: 0,
                    indent: 0,
                    height: 2,
                    color: Color(0xffF0F0F0),
                  ),
                  Text(
                    '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                    style: GetsmallFontsGrey(fontsize: 14),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Text(
                  'Payment',
                  style: GetsmallFontsGrey(fontweight: FontWeight.w600),
                ),
                const Spacer(),
                AppBarIcons(
                  icon: 'edit-2',
                  ontap: () {},
                ),
              ],
            ),
            const Gap(10),
            CustomWhiteContainer(
                widget: Row(
              children: [
                Image.asset('assets/mastercard.png'),
                Text(
                  '**** **** **** 3947',
                  style: GetsmallFontsBlack(fontweight: FontWeight.w600),
                )
              ],
            )),
            const Gap(10),
            Row(children: [
              const Text('Delivery method'),
              const Spacer(),
              AppBarIcons(
                icon: 'edit-2',
                ontap: () {},
              ),
            ]),
            const Gap(10),
            CustomWhiteContainer(
                widget: Row(
              children: [
                Image.asset('assets/dhl.png'),
                const Gap(10),
                Text(
                  'Fast(2-3days)',
                  style: GetsmallFontsBlack(),
                ),
              ],
            )),
            const Gap(30),
            CustomWhiteContainer(
              widget: Column(
                children: [
                  Row(
                    children: [
                      const Text('Order:'),
                      const Spacer(),
                      Text(
                        '\$ 95.00',
                        style: GetsmallFontsBlack(fontsize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Delivery:'),
                      const Spacer(),
                      Text(
                        '\$ 5.00',
                        style: GetsmallFontsBlack(fontsize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Total:'),
                      const Spacer(),
                      Text(
                        '\$ 100.00',
                        style: GetsmallFontsBlack(fontsize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.7),
                      offset: const Offset(5, 5),
                      blurRadius: 5,
                      spreadRadius: 5)
                ]),
                height: 60,
                width: double.infinity,
                child: CustomElevatedButton(
                    onPressed: () {
                      gotoPush(context, const SuccessOrderView());
                    },
                    textName: 'SUBMIT ORDER'))
          ],
        ),
      ),
    );
  }
}
