import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/customTurendOffOnButton.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:gap/gap.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  bool toggleSales = true;
  bool toggleNewArival = true;
  bool toggleDeliveryStauts = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Presonal Information',
                    style: GetsmallFontsGrey(
                        fontsize: 16, fontweight: FontWeight.w600),
                  ),
                  const Spacer(),
                  AppBarIcons(
                    colorFilter:
                        const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    height: 24,
                    width: 24,
                    icon: 'edit-2',
                    ontap: () {},
                  ),
                ],
              ),
              const Gap(5),
              CustomWhiteContainer(
                  padding: const EdgeInsets.all(10),
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: GetsmallFontsGrey(fontsize: 14),
                      ),
                      const Text('ahmed'),
                    ],
                  )),
              const Gap(10),
              CustomWhiteContainer(
                  padding: const EdgeInsets.all(10),
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GetsmallFontsGrey(fontsize: 14),
                      ),
                      const Text('ahmed@gmail.com'),
                    ],
                  )),
              const Gap(40),
              Row(
                children: [
                  Text(
                    'Password',
                    style: GetsmallFontsGrey(
                        fontsize: 16, fontweight: FontWeight.w600),
                  ),
                  const Spacer(),
                  AppBarIcons(
                    colorFilter:
                        const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    height: 24,
                    width: 24,
                    icon: 'edit-2',
                    ontap: () {},
                  ),
                ],
              ),
              const Gap(5),
              CustomWhiteContainer(
                  padding: const EdgeInsets.all(10),
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: GetsmallFontsGrey(
                          fontsize: 14,
                        ),
                      ),
                      const Text('***********'),
                    ],
                  )),
              const Gap(40),
              Row(
                children: [
                  Text(
                    'Notifications',
                    style: GetsmallFontsGrey(
                        fontsize: 16, fontweight: FontWeight.w600),
                  ),
                  const Spacer(),
                  AppBarIcons(
                    colorFilter:
                        const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    height: 24,
                    width: 24,
                    icon: 'edit-2',
                    ontap: () {},
                  ),
                ],
              ),
              const Gap(5),
              CustomToggleButton(
                  value: toggleSales,
                  onChange: (value) {
                    toggleSales = !toggleSales;
                    setState(() {});
                  },
                  buttonName: 'Sales'),
              const Gap(10),
              CustomToggleButton(
                  value: toggleNewArival,
                  onChange: (value) {
                    toggleNewArival = !toggleNewArival;
                    setState(() {});
                  },
                  buttonName: 'New arrivals'),
              const Gap(10),
              CustomToggleButton(
                  value: toggleDeliveryStauts,
                  onChange: (value) {
                    toggleDeliveryStauts = !toggleDeliveryStauts;
                    setState(() {});
                  },
                  buttonName: 'Delivery status changes'),
              const Gap(10),
              Row(
                children: [
                  Text(
                    'Help Center',
                    style: GetsmallFontsGrey(
                        fontsize: 16, fontweight: FontWeight.w600),
                  )
                ],
              ),
              CustomWhiteContainer(
                  widget: Row(
                children: [
                  Text(
                    'FAQ',
                    style: GetsmallFontsBlack(
                      fontsize: 16,
                    ),
                  ),
                  const Spacer(),
                  AppBarIcons(
                    icon: 'rightArrow',
                    ontap: () {},
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
