import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/home/order_details.dart';
import 'package:furniture_shopping_app/feature/widgets/CategoriesWidget.dart';
import 'package:gap/gap.dart';

import '../../widgets/customIconButton.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.shopping_cart))
        ],
        leading: IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Make home',
              style:
                  GetTiteldFontsGrey(fontweight: FontWeight.w400, fontsize: 18),
            ),
            Text(
              'BEAUTIFUL',
              style: GetTiteldFontsblack(fontsize: 18),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Gap(10),
              const CategoriesWidget(),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.65),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'assets/lamp.png',
                                height: 200,
                                width: 200,
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: CustomIconButton(
                                  ontap: () {
                                    gotoPushReplacement(
                                        context, const OrderDetailsView());
                                  },
                                  icon: const Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Black Simple Lamp',
                                style: GetsmallFontsGrey(fontsize: 14),
                              ),
                            ],
                          ),
                          const Row(
                            children: [Text('\$ 12.00')],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
