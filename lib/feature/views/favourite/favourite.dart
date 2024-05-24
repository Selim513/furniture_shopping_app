import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/core/model/item_model.dart';
import 'package:furniture_shopping_app/feature/views/myCart/mycart.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        leading: Center(
          child: AppBarIcons(
            icon: 'search',
            ontap: () {},
          ),
        ),
        actions: [
          AppBarIcons(
            icon: 'bi_cart2',
            ontap: () {
              gotoPush(context, const MyCartView());
            },
          ),
          const Gap(10),
        ],
        centerTitle: true,
        title: Text(
          'Favorites',
          style: GetprimaryTitleFontBlack(fontsize: 17),
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                indent: 5,
                endIndent: 5,
                height: 5,
              );
            },
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage(items[index].image!),
                              fit: BoxFit.cover)),
                      height: 100,
                      width: 100,
                    ),
                    const Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].name!,
                          style: GetsmallFontsGrey(
                              fontsize: 14, fontweight: FontWeight.w600),
                        ),
                        Text(
                          "\$ ${items[index].price}",
                          style: GetsmallFontsBlack(fontsize: 16),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        AppBarIcons(
                          icon: 'shape_X',
                          ontap: () {},
                        ),
                        const Gap(50),
                        Container(
                          height: 34,
                          width: 34,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffE0E0E0)),
                          child: Center(
                            child: AppBarIcons(
                              height: 20,
                              width: 20,
                              icon: 'shopping_bag',
                              ontap: () {},
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: SizedBox(
                height: 60,
                child: CustomElevatedButton(
                    onPressed: () {}, textName: 'Add All to my cart'),
              ))
        ],
      ),
    );
  }
}
