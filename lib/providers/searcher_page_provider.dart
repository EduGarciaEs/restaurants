import 'package:flutter/material.dart';
import 'package:restaurants_app/utils/get_json.dart';
import 'package:restaurants_app/widgets/city_search_delegate.dart';

class SearcherPageProvider with ChangeNotifier {
  SearcherPageProvider();

  Future<void> readJason(BuildContext context) async {
    jsonReader jsonreader = new jsonReader();

    List<dynamic> listrestaurants = await jsonreader.getJson();
    showSearch(context: context, delegate: CitySearchDelegate(listrestaurants));
  }
}
