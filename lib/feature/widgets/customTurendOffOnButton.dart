import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton(
      {super.key,
      required this.value,
      required this.onChange,
      required this.buttonName});

  final bool value;
  final String buttonName;
  final Function(bool)? onChange;
  @override
  Widget build(BuildContext context) {
    return CustomWhiteContainer(
        padding: const EdgeInsets.all(15),
        widget: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              buttonName,
              style:
                  GetsmallFontsBlack(fontsize: 16, fontweight: FontWeight.w600),
            ),
            const Spacer(),
            SizedBox(
              width: 40,
              height: 24,
              child: Switch.adaptive(
                activeTrackColor: Colors.green,
                inactiveTrackColor: const Color(0xffE6E6E6),
                inactiveThumbColor: Colors.white,
                trackOutlineColor: const WidgetStatePropertyAll(Colors.white),
                value: value,
                onChanged: onChange,
              ),
            )
          ],
        ));
  }
}
