class CategoriesModel {
  var id, name;

  CategoriesModel(this.id, this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  CategoriesModel.fromJson(Map map):
        id = map['id'],
        name = map['name'];
}
