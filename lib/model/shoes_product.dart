class Products {
  final String? name;
  var price;
  final String? image;
  final String? description;


  Products({
    this.name,
    this.price,
    this.image,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description':description,
      'price': price,
      'image': image,
    };
  }

  factory Products.fromMap(Map<dynamic, dynamic> map,) {
    return Products(
      name: map['name'] as String,
      price: map['price'] ,
      image: map['image'] as String,
      description: map['description'] as String,

    );
  }
}