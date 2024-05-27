import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/model/item_model.dart';
import 'package:furniture_shopping_app/feature/views/myCart/promotextform.dart';
import 'package:furniture_shopping_app/feature/widgets/customAdd_Remove_container.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  double totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Cart'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  indent: 5,
                  endIndent: 5,
                  height: 5,
                );
              },
              itemCount: 4,
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
                          ),
                          Row(
                            children: [
                              CustomAdd_remove_Container(
                                padding:
                                    const EdgeInsets.only(left: 0, right: 10),
                                ontap: () {
                                  items[index].quantity++;
                                  totalPrice = items[index].price! *
                                      items[index].quantity;

                                  print(items[index].quantity);
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                              Text(
                                "${items[index].quantity}",
                                style: GetsmallFontsBlack(fontsize: 18),
                              ),
                              CustomAdd_remove_Container(
                                ontap: () {
                                  if (items[index].quantity > 0) {
                                    items[index].quantity--;
                                  }
                                  totalPrice = items[index].price! *
                                      items[index].quantity;

                                  print(items[index].quantity);
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          AppBarIcons(
                            icon: 'shape_X',
                            ontap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const PromoTextFormField(),
                    const Gap(10),
                    Row(
                      children: [
                        Text(
                          'Total:',
                          style: GetsmallFontsGrey(
                              fontweight: FontWeight.w700, fontsize: 20),
                        ),
                        const Spacer(),
                        Text(
                          totalPrice.toStringAsFixed(2),
                          style: GetsmallFontsBlack(
                              fontweight: FontWeight.w700, fontsize: 20),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: CustomElevatedButton(
                            onPressed: () {
                              totalPrice == 0;
                              setState(() {});
                            },
                            textName: 'Check out'))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
