
import 'package:flutter/material.dart';

class PromoTextFormField extends StatelessWidget {
  const PromoTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
                style: IconButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20)),
                    backgroundColor: Colors.black),
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                )),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Enter your promo code',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none)));
  }
}
