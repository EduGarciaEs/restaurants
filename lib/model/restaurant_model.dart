
class Restaurant {
  String? name;
  String? adress;

  Restaurant({this.name, this.adress});

  Restaurant.fromJson(Map<String, String> restaurants) {
    name = restaurants['name']!;
    adress = restaurants['adress']!;
  }

  @override
  String toString() {
    return 'name:${this.name},adress:${this.adress}';
  }
}
