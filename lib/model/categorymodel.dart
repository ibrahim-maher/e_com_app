class CategoryModel {
  String? name, img;

  CategoryModel({ this.name, this.img});

  CategoryModel.fromJson(Map<dynamic, dynamic> map) {

    name = map['name'];
    img = map['img'];
  }

  toJson() {
    return {

      'name': name,
      'img': img,
    };
  }
}
