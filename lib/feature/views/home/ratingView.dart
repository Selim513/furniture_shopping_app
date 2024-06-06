import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/model/item_model.dart';
import 'package:furniture_shopping_app/feature/views/notification/CustomImageContainer.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:gap/gap.dart';

class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  bool selected = true;
  bool starSelect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating && Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageContainer(image: items[2].image!),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${items[2].name}'),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
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
                        const Gap(5),
                        Text(
                          '4.5',
                          style: GetsmallFontsBlack(fontsize: 18),
                        ),
                      ],
                    ),
                    const Text('10 Reviews')
                  ],
                )
              ],
            ),
            const Gap(20),
            const Divider(
              endIndent: 5,
              indent: 5,
              height: 5,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Padding(padding: EdgeInsets.only(bottom: 100));
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                      ),
                      CustomWhiteContainer(
                        widget: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    const Text('Burno Frenandez'),
                                    SizedBox(
                                      height: 20,
                                      width: 100,
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
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  '20/03/2020',
                                  style: GetsmallFontsGrey(fontsize: 12),
                                ),
                              ],
                            ),
                            const Gap(20),
                            const Text(
                                'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price')
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
