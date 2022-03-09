import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurants_app/providers/searcher_page_provider.dart';

class SearcherPage extends StatelessWidget {
  const SearcherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearcherPageProvider controller =
        Provider.of<SearcherPageProvider>(context);

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(child: Text('Restaurants Searcher')),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                await controller.readJason(context);
              })
        ],
      ),
      body: const Image(
        image: AssetImage('assets/restaurant.jpeg'),
      ),
    );
  }
}


