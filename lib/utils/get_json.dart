import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class jsonReader {
  List<dynamic> getOption = [];

  Future<List<dynamic>> getJson() async {
    final dynamic value = await rootBundle.loadString('restaurants.json');
    Map datos = json.decode(value);
    getOption = datos['bogota'];

    return getOption;
  }
}

