import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/home/bottomNavBar.dart';
import 'package:furniture_shopping_app/feature/views/home/ratingView.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

import '../../widgets/customAdd_Remove_container.dart';
import '../../widgets/customIconButton.dart';

class OrderDetailsView extends StatefulWidget {
  const OrderDetailsView({super.key});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  int number = 00;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.only(top: 50, left: 30),
                alignment: Alignment.topLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/lamp.png',
                      ),
                    )),
                child: IconButton(
                    style: IconButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      gotoPushReplacement(context, const BottomNavBarView());
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Minimal Stand',
                          style: GetTiteldFontsblack(fontsize: 24),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ 50",
                          style: GetsmallFontsBlack(fontsize: 30),
                        ),
                        const Spacer(),
                        CustomAdd_remove_Container(
                          ontap: () {
                            number++;
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                        Text(
                          "$number",
                          style: GetsmallFontsBlack(fontsize: 18),
                        ),
                        CustomAdd_remove_Container(
                          ontap: () {
                            if (number > 0) {
                              number--;
                            }
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            gotoPush(context, const RatingView());
                            selected = !selected;
                            setState(() {});
                          },
                          child: selected == true
                              ? const Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Color(0xffF2C94C),
                                )
                              : const Icon(
                                  Icons.star_border_outlined,
                                  size: 25,
                                ),
                        ),
                        Text(
                          '4.5',
                          style: GetsmallFontsBlack(fontsize: 18),
                        ),
                        const Gap(20),
                        Text(
                          '(50 Reviews)',
                          style: GetsmallFontsGrey(fontsize: 14),
                        ),
                      ],
                    ),
                    const Gap(5),
                    Text(
                      'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                      style: GetsmallFontsGrey(fontsize: 14, height: 0),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: CustomIconButton(
                            icon: const Icon(Icons.bookmark_border),
                            ontap: () {},
                          ),
                        ),
                        const Gap(20),
                        SizedBox(
                          height: 60,
                          width: 250,
                          child: CustomElevatedButton(
                            onPressed: () {},
                            textName: 'Add to Cart',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
