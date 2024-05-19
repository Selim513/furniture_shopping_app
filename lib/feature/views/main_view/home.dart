import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/model/categorie_model.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            const Gap(30),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xffF5F5F5)),
                              child: SvgPicture.asset(
                                Categories[index].image,
                                fit: BoxFit.none,
                              )),
                          const Gap(10),
                          Text(
                            Categories[index].name,
                            style: GetsmallFontsGrey(fontsize: 14),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
