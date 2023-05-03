class TipModel {
  String title = '';
  String description = '';
  String url = '';
  bool isNew = true;

  TipModel({required this.title, required this.description, required this.url, required this.isNew});

  TipModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    isNew = json['isNew'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['isNew'] = isNew;
    return data;
  }
}
