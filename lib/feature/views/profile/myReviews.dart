import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/model/item_model.dart';
import 'package:furniture_shopping_app/feature/views/notification/CustomImageContainer.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:gap/gap.dart';

class MyReviwsView extends StatefulWidget {
  const MyReviwsView({super.key});

  @override
  State<MyReviwsView> createState() => _MyReviwsViewState();
}

class _MyReviwsViewState extends State<MyReviwsView> {
  bool starSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBarIcons(
              icon: 'search',
              ontap: () {},
            ),
          )
        ],
        title: const Text('My reviews'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomWhiteContainer(
              widget: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageContainer(image: items[0].image!),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[0].name!,
                        style: GetsmallFontsGrey(
                            fontsize: 16, fontweight: FontWeight.w600),
                      ),
                      Text(
                        "\$ ${items[0].price}",
                        style: GetsmallFontsBlack(
                            fontsize: 16, fontweight: FontWeight.w800),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            starSelect = !starSelect;
                            setState(() {});
                          },
                          child: starSelect == true
                              ? const Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Color(0xffF2C94C),
                                )
                              : const Icon(
                                  Icons.star_border_outlined,
                                  size: 25,
                                ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '20/03/2020',
                    style: GetsmallFontsGrey(fontsize: 12),
                  ),
                ],
              ),
              const Gap(10),
              Text(
                items[0].reviews!,
                style: GetsmallFontsGrey(fontsize: 14, color: Colors.black),
              )
            ],
          ));
        },
      ),
    );
  }
}
