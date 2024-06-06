import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/model/item_model.dart';
import 'package:furniture_shopping_app/feature/views/notification/CustomImageContainer.dart';
import 'package:gap/gap.dart';

class NotificatonView extends StatelessWidget {
  const NotificatonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Notification'),
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'))),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageContainer(
                  image: items[index].image!,
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your order #123456789 has been confirm',
                      style: GetsmallFontsBlack(fontsize: 12),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Turpis pretium et in arcu adipiscing nec.\n Turpis pretium et in arcu adipiscing nec. ',
                      style: GetsmallFontsGrey(fontsize: 10),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
