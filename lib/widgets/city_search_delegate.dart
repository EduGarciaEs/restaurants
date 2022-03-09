import 'package:flutter/material.dart';

class CitySearchDelegate extends SearchDelegate {
  List<dynamic> restaurants;

  CitySearchDelegate(this.restaurants);

  @override
  String get searchFieldLabel => 'Enter name of the city';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('R');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == 'cali') {
      return ListView(
        children: const [
          ListTile(
            title: Text('El fogonaso'),
            subtitle: Text('cra 28 # 34-45'),
          ),
          ListTile(
            title: Text('Crepes El Molino'),
            subtitle: Text('Unicentro'),
          ),
          ListTile(
            title: Text('La Brasa'),
            subtitle: Text('Ciudad Jardin'),
          ),
        ],
      );
    }
    if (query == 'bogota') {
      return ListView(
        children: const [
          ListTile(
            title: Text('Chopinar'),
            subtitle: Text('cra 7 # 34-54'),
          ),
          ListTile(
            title: Text('Gourmet 93'),
            subtitle: Text('Zona Rosa'),
          ),
          ListTile(
            title: Text('Solo asados'),
            subtitle: Text('Cedritos'),
          ),
        ],
      );
    }
    if (query == 'medellin') {
      return ListView(
        children: const [
          ListTile(
            title: Text('Sabor y sazon'),
            subtitle: Text('Cra 43 # 30-20'),
          ),
          ListTile(
            title: Text('Atardeceres'),
            subtitle: Text('El Poblado'),
          ),
          ListTile(
            title: Text('Todo al carbon'),
            subtitle: Text('Laureles'),
          ),
        ],
      );
    }
    return ListView(
      children: const [
        ListTile(
          title: Text('Just enter cali, bogota or medellin'),
        )
      ],
    );
  }
}
