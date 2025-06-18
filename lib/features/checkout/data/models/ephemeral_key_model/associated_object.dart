class AssociatedObject {
  String? id;
  String? type;

  AssociatedObject({this.id, this.type});

  AssociatedObject.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    type = json['type'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    return data;
  }
}
