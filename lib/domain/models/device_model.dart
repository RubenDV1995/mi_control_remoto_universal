class DeviceModel {
  List<Items>? items;

  DeviceModel({this.items});

  DeviceModel.fromJson(Map<String, dynamic> json) {
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
  int numberButtons = 0;

  Items({
    required this.id,
    required this.brand,
    required this.urlImage,
    required this.numberButtons,
  });

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    urlImage = json['urlImage'];
    numberButtons = json['numberButtons'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['brand'] = brand;
    data['urlImage'] = urlImage;
    data['numberButtons'] = numberButtons;
    return data;
  }
}
