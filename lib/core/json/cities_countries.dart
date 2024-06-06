import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, List<String>>> loadCountriesAndCities() async {
  final String response =
      await rootBundle.loadString('assets/json/countries.json');
  final Map<String, dynamic> data = json.decode(response);
  return data.map((key, value) => MapEntry(key, List<String>.from(value)));
}
