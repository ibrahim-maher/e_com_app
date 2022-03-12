class ItemModel {
  String? title, img, description, price, details, size, color;
  ItemModel({
    this.title,
    this.img,
    this.price,
    this.description,
    this.details,
    this.size,
    this.color,
  });

  ItemModel.fromJson(Map<dynamic, dynamic> map) {
    title = map['title'];
    img = map['img'];
    price = map['price'];
    description = map['description'];
    details = map['details'];
    size = map['size'];
    color = map['color'];
  }

  toJson() {
    return {
      'name': title,
      'img': img,
      'price': price,
      'description': description,
      'details': details,
      'size': size,
      'color': color,
    };
  }
}
