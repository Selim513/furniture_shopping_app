import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/profile/adding_shipping_adress.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/customCheckBox.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';

class ShippingAdressView extends StatefulWidget {
  const ShippingAdressView({super.key});

  @override
  State<ShippingAdressView> createState() => _ShippingAdressViewState();
}

class _ShippingAdressViewState extends State<ShippingAdressView> {
  bool selectedAdress1 = false;
  bool selectedAdress2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: IconButton(
            style: IconButton.styleFrom(
              iconSize: 32,
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              gotoPush(context, const AddingShippingAdressView());
            },
            icon: const Icon(Icons.add)),
      ),
      appBar: AppBar(
        title: const Text('Shipping Adress'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomCheckBox(
              value: selectedAdress1,
              onChange: (value) {
                selectedAdress1 = !selectedAdress1;
                setState(() {});
              },
            ),
            CustomWhiteContainer(
                padding: EdgeInsets.zero,
                widget: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            'Ahmed Selem',
                            style: GetsmallFontsBlack(fontsize: 18),
                          ),
                          const Spacer(),
                          AppBarIcons(
                            icon: 'edit-2',
                            ontap: () {},
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                        style: GetsmallFontsGrey(height: 0, fontsize: 14),
                      ),
                    ),
                  ],
                )),
            CustomCheckBox(
              value: selectedAdress2,
              onChange: (value) {
                selectedAdress2 = !selectedAdress2;
                setState(() {});
              },
            ),
            CustomWhiteContainer(
                padding: EdgeInsets.zero,
                widget: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            'Ahmed Selem',
                            style: GetsmallFontsBlack(fontsize: 18),
                          ),
                          const Spacer(),
                          AppBarIcons(
                            colorFilter: const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                            icon: 'edit-2',
                            ontap: () {},
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                        style: GetsmallFontsGrey(height: 0, fontsize: 14),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
