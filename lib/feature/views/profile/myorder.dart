import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:gap/gap.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({super.key});

  @override
  State<MyOrderView> createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My  Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          selectedIndex = 1;
                          setState(() {});
                        },
                        child: Text(
                          'Deliverd',
                          style: (selectedIndex == 1)
                              ? GetsmallFontsBlack(fontsize: 18)
                              : GetsmallFontsGrey(),
                        )),
                    (selectedIndex == 1)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 40,
                                height: 4,
                              )
                            ],
                          )
                        : const SizedBox()
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          selectedIndex = 2;
                          setState(() {});
                        },
                        child: Text(
                          'Processing',
                          style: (selectedIndex == 2)
                              ? GetsmallFontsBlack(fontsize: 18)
                              : GetsmallFontsGrey(),
                        )),
                    (selectedIndex == 2)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 40,
                                height: 4,
                              )
                            ],
                          )
                        : const SizedBox()
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          selectedIndex = 3;
                          setState(() {});
                        },
                        child: Text(
                          'Canceled',
                          style: (selectedIndex == 3)
                              ? GetsmallFontsBlack(fontsize: 18)
                              : GetsmallFontsGrey(),
                        )),
                    (selectedIndex == 3)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 40,
                                height: 4,
                              )
                            ],
                          )
                        : const SizedBox()
                  ],
                )),
              ],
            ),
            const Gap(20),
            CustomWhiteContainer(
                padding: const EdgeInsets.all(0),
                widget: Column(
                  children: [
                    const Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'Order No6515546',
                            style: GetsmallFontsBlack(
                                fontweight: FontWeight.w700, fontsize: 16),
                          ),
                          const Spacer(),
                          Text(
                            '20/03/2020',
                            style: GetsmallFontsGrey(fontsize: 14),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                    ),
                    const Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'Quantity:',
                            style: GetsmallFontsGrey(
                                fontweight: FontWeight.w600, fontsize: 16),
                          ),
                          Text(
                            ' 03',
                            style: GetsmallFontsBlack(fontsize: 16),
                          ),
                          const Spacer(),
                          Text(
                            'Total Amount:',
                            style: GetsmallFontsGrey(
                                fontweight: FontWeight.w600, fontsize: 16),
                          ),
                          Text(
                            ' \$150',
                            style: GetsmallFontsBlack(fontsize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: const ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(0),
                                        right: Radius.circular(5)))),
                            onPressed: () {},
                            child: const Text('Detail')),
                        const Spacer(),
                        Text(
                          'Deliverd',
                          style: GetsmallFontsBlack(
                              color: Colors.green,
                              fontsize: 16,
                              fontweight: FontWeight.w600),
                        ),
                        const Gap(10)
                      ],
                    ),
                    const Gap(20),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
