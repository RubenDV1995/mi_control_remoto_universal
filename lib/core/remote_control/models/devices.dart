class Devices {
  List<Items>? items;

  Devices({this.items});

  Devices.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String id = '0';
  String brand = 'generic';
  String urlImage = '';

  Items({required this.id, required this.brand, required this.urlImage});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    urlImage = json['urlImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['brand'] = brand;
    data['urlImage'] = urlImage;
    return data;
  }
}