import 'package:sora_myanmar/models/product_attr.dart';

class Product {
  int? id;
  String? name;
  int? price;
  String? mmPrice;
  dynamic? stock;
  dynamic? discount;
  String? sku;
  int? point;
  Category? category;
  Brand? brand;
  String? fullDescription;
  String? shortDescription;
  String? descFile;
  dynamic? specification;
  String? otherSpecification;
  List<ProductAttribute>? productAttribute;
  List<ProductPicture>? productPicture;
  List<ProductReview>? productReview;
  int? isActive;
  String? createdAt;

  Product(
      {this.id,
      this.name,
      this.price,
      this.mmPrice,
      this.stock,
      this.discount,
      this.sku,
      this.point,
      this.category,
      this.brand,
      this.fullDescription,
      this.shortDescription,
      this.descFile,
      this.specification,
      this.otherSpecification,
      this.productAttribute,
      this.productPicture,
      this.productReview,
      this.isActive,
      this.createdAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    mmPrice = json['mm_price'];
    stock = json['stock'];
    discount = json['discount'];
    sku = json['sku'];
    point = json['point'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    fullDescription = json['full_description'];
    shortDescription = json['short_description'];
    descFile = json['desc_file'];
    specification = json['specification'];
    otherSpecification = json['other_specification'];
    if (json['product_attribute'] != null) {
      productAttribute = <ProductAttribute>[];
      json['product_attribute'].forEach((v) {
        productAttribute!.add(ProductAttribute.fromJson(v));
      });
    }
    if (json['product_picture'] != null) {
      productPicture = <ProductPicture>[];
      json['product_picture'].forEach((v) {
        productPicture!.add(ProductPicture.fromJson(v));
      });
    }
    // if (json['product_review'] != null) {
    //   productReview = <Null>[];
    //   json['product_review'].forEach((v) {
    //     productReview!.add(new Null.fromJson(v));
    //   });
    // }
    isActive = json['is_active'];
    createdAt = json['created_at'];
  }
}

class Category {
  int? id;
  String? name;
  String? description;
  String? picture;
  int? isActive;
  int? parent;
  String? code;
  int? point;
  int? isUsePoint;
  String? createdAt;

  Category(
      {this.id,
      this.name,
      this.description,
      this.picture,
      this.isActive,
      this.parent,
      this.code,
      this.point,
      this.isUsePoint,
      this.createdAt});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    isActive = json['is_active'];
    parent = json['parent'];
    code = json['code'];
    point = json['point'];
    isUsePoint = json['is_use_point'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['picture'] = picture;
    data['is_active'] = isActive;
    data['parent'] = parent;
    data['code'] = code;
    data['point'] = point;
    data['is_use_point'] = isUsePoint;
    data['created_at'] = createdAt;
    return data;
  }
}

class Brand {
  int? guid;
  String? name;
  String? description;
  String? picture;
  int? isActive;
  String? createdAt;

  Brand(
      {this.guid,
      this.name,
      this.description,
      this.picture,
      this.isActive,
      this.createdAt});

  Brand.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['guid'] = guid;
    data['name'] = name;
    data['description'] = description;
    data['picture'] = picture;
    data['is_active'] = isActive;
    data['created_at'] = createdAt;
    return data;
  }
}

class ProductAttribute {
  String? productAttrbuteId;
  String? productAttrbuteValueId;
  String? name;
  String? value;

  ProductAttribute(
      {this.productAttrbuteId,
      this.productAttrbuteValueId,
      this.name,
      this.value});

  ProductAttribute.fromJson(Map<String, dynamic> json) {
    productAttrbuteId = json['product_attrbute_id'];
    productAttrbuteValueId = json['product_attrbute_value_id'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_attrbute_id'] = productAttrbuteId;
    data['product_attrbute_value_id'] = productAttrbuteValueId;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class ProductPicture {
  int? guid;
  String? image;
  int? displayOrder;
  int? isActive;

  ProductPicture({this.guid, this.image, this.displayOrder, this.isActive});

  ProductPicture.fromJson(Map<String, dynamic> json) {
    guid = json['guid'];
    image = json['image'];
    displayOrder = json['display_order'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['guid'] = guid;
    data['image'] = image;
    data['display_order'] = displayOrder;
    data['is_active'] = isActive;
    return data;
  }
}
