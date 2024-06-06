import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/json/cities_countries.dart';
import 'package:furniture_shopping_app/feature/widgets/customTextFormField.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';

class AddingShippingAdressView extends StatefulWidget {
  const AddingShippingAdressView({super.key});

  @override
  _AddingShippingAdressViewState createState() =>
      _AddingShippingAdressViewState();
}

class _AddingShippingAdressViewState extends State<AddingShippingAdressView> {
  final fullnameController = TextEditingController();
  final adressController = TextEditingController();
  final postalCodeController = TextEditingController();
  String? selectedCountry;
  String? selectedCity;
  final globalKey = GlobalKey<FormState>();
  Map<String, List<String>> countryCityMap = {};
  List<String> cities = [];

  @override
  void initState() {
    super.initState();
    loadCountriesAndCities().then((data) {
      setState(() {
        countryCityMap = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding Shipping Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Ex: Ahmed Selem',
                labletText: 'Full name',
                controller: fullnameController,
                validateor: (value) {
                  if (value!.isEmpty) {
                    return 'This Field is Required';
                  } else if (value.length < 3) {
                    return 'Please enter a real name with at least 3 letters';
                  }
                  return null;
                },
              ),
              const Gap(20),
              CustomTextFormField(
                controller: adressController,
                validateor: (value) {
                  if (value!.isEmpty) {
                    return 'This Field is Required';
                  } else if (value.length < 10) {
                    return 'Please enter a valid address with at least 10 characters';
                  }
                  return null;
                },
                labletText: 'Address',
                hintText: 'Ex: 123 Main St',
              ),
              const Gap(20),
              CustomTextFormField(
                controller: postalCodeController,
                validateor: (value) {
                  if (value!.isEmpty) {
                    return 'This Field is Required';
                  } else if (value.length != 5) {
                    return 'Enter a valid postal code with 5 numbers';
                  }
                  return null;
                },
                labletText: 'Zipcode (postal code)',
                hintText: 'Ex: 12345',
              ),
              const Gap(20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 233, 232, 232),
                  filled: true,
                  labelText: 'Country',
                  labelStyle: GetsmallFontsGrey(fontsize: 14),
                ),
                items: countryCityMap.keys.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value;
                    selectedCity = null;
                    cities = countryCityMap[selectedCountry]!;
                  });
                },
                value: selectedCountry,
                validator: (value) {
                  if (value == null) {
                    return 'Selecting your country is required';
                  }
                  return null;
                },
              ),
              const Gap(20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 233, 232, 232),
                  filled: true,
                  labelText: 'City',
                  labelStyle: GetsmallFontsGrey(fontsize: 14),
                ),
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                value: selectedCity,
                validator: (value) {
                  if (value == null) {
                    return 'Selecting your city is required';
                  }
                  return null;
                },
              ),
              const Spacer(),
              SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          print('Successfully added address');
                        }
                      },
                      textName: 'Save Address')),
            ],
          ),
        ),
      ),
    );
  }
}
