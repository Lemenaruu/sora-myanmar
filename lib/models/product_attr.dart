import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductAttribute {
  String? id;
  String? valueId;
  String? name;
  String? value;
  ProductAttribute({
    this.id,
    this.valueId,
    this.name,
    this.value,
  });

  ProductAttribute copyWith({
    String? id,
    String? valueId,
    String? name,
    String? value,
  }) {
    return ProductAttribute(
      id: id ?? this.id,
      valueId: valueId ?? this.valueId,
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'valueId': valueId,
      'name': name,
      'value': value,
    };
  }

  factory ProductAttribute.fromMap(Map<String, dynamic> map) {
    return ProductAttribute(
      id: map['id'] != null ? map['id'] as String : null,
      valueId: map['valueId'] != null ? map['valueId'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
    );
  }

  @override
  String toString() {
    return 'ProductAttribute(id: $id, valueId: $valueId, name: $name, value: $value)';
  }

  @override
  bool operator ==(covariant ProductAttribute other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.valueId == valueId &&
      other.name == name &&
      other.value == value;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      valueId.hashCode ^
      name.hashCode ^
      value.hashCode;
  }
}



class ProductPicture {
  int? id;
  String? image;
  int? displayOrder;
  int? isActive;
  ProductPicture({
    this.id,
    this.image,
    this.displayOrder,
    this.isActive,
  });

  ProductPicture copyWith({
    int? id,
    String? image,
    int? displayOrder,
    int? isActive,
  }) {
    return ProductPicture(
      id: id ?? this.id,
      image: image ?? this.image,
      displayOrder: displayOrder ?? this.displayOrder,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  factory ProductPicture.fromMap(Map<String, dynamic> map) {
    return ProductPicture(
      id: map['id'] != null ? map['id'] as int : null,
      image: map['image'] != null ? map['image'] as String : null,
      displayOrder: map['displayOrder'] != null ? map['displayOrder'] as int : null,
      isActive: map['isActive'] != null ? map['isActive'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductPicture.fromJson(String source) => ProductPicture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductPicture(id: $id, image: $image, displayOrder: $displayOrder, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant ProductPicture other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.image == image &&
      other.displayOrder == displayOrder &&
      other.isActive == isActive;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      image.hashCode ^
      displayOrder.hashCode ^
      isActive.hashCode;
  }
}


class Brand {
  int? id;
  String? name;
  String? description;
  String? image;
  int? isActive;
  String? createdAt;
  Brand({
    this.id,
    this.name,
    this.description,
    this.image,
    this.isActive,
    this.createdAt,
  });
 

  Brand copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
    int? isActive,
    String? createdAt,
  }) {
    return Brand(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'isActive': isActive,
      'createdAt': createdAt,
    };
  }

  factory Brand.fromMap(Map<String, dynamic> map) {
    return Brand(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as int : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Brand.fromJson(String source) => Brand.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, description: $description, image: $image, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant Brand other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.image == image &&
      other.isActive == isActive &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      image.hashCode ^
      isActive.hashCode ^
      createdAt.hashCode;
  }
}



class ProductCategory {
  int? id;
  String? name;
  String? description;
  String? picture;
  int? isActive;
  int? parent;
  int? code;
  int? point;
  int? isUsePoint;
  String? createdAt;
  ProductCategory({
    this.id,
    this.name,
    this.description,
    this.picture,
    this.isActive,
    this.parent,
    this.code,
    this.point,
    this.isUsePoint,
    this.createdAt,
  });

  ProductCategory copyWith({
    int? id,
    String? name,
    String? description,
    String? picture,
    int? isActive,
    int? parent,
    int? code,
    int? point,
    int? isUsePoint,
    String? createdAt,
  }) {
    return ProductCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      picture: picture ?? this.picture,
      isActive: isActive ?? this.isActive,
      parent: parent ?? this.parent,
      code: code ?? this.code,
      point: point ?? this.point,
      isUsePoint: isUsePoint ?? this.isUsePoint,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'picture': picture,
      'isActive': isActive,
      'parent': parent,
      'code': code,
      'point': point,
      'isUsePoint': isUsePoint,
      'createdAt': createdAt,
    };
  }

  factory ProductCategory.fromMap(Map<String, dynamic> map) {
    return ProductCategory(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      picture: map['picture'] != null ? map['picture'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as int : null,
      parent: map['parent'] != null ? map['parent'] as int : null,
      code: map['code'] != null ? map['code'] as int : null,
      point: map['point'] != null ? map['point'] as int : null,
      isUsePoint: map['isUsePoint'] != null ? map['isUsePoint'] as int : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductCategory.fromJson(String source) => ProductCategory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, description: $description, picture: $picture, isActive: $isActive, parent: $parent, code: $code, point: $point, isUsePoint: $isUsePoint, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant ProductCategory other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.picture == picture &&
      other.isActive == isActive &&
      other.parent == parent &&
      other.code == code &&
      other.point == point &&
      other.isUsePoint == isUsePoint &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      picture.hashCode ^
      isActive.hashCode ^
      parent.hashCode ^
      code.hashCode ^
      point.hashCode ^
      isUsePoint.hashCode ^
      createdAt.hashCode;
  }
}
class ProductReview {
	String? guid;
	String? productId;
	String? userId;
	int? rating;
	String? description;
	int? isActive;
	String? createdBy;
	String? createdWhen;
	dynamic? updatedBy;
	dynamic? updatedWhen;
	String? imgUrl1;
	dynamic? imgUrl2;
	dynamic? imgUrl3;
	dynamic? imgUrl4;
	dynamic? imgUrl5;
  ProductReview({
    this.guid,
    this.productId,
    this.userId,
    this.rating,
    this.description,
    this.isActive,
    this.createdBy,
    this.createdWhen,
    this.updatedBy,
    this.updatedWhen,
    this.imgUrl1,
    this.imgUrl2,
    this.imgUrl3,
    this.imgUrl4,
    this.imgUrl5,
  });
  

  ProductReview copyWith({
    String? guid,
    String? productId,
    String? userId,
    int? rating,
    String? description,
    int? isActive,
    String? createdBy,
    String? createdWhen,
    dynamic? updatedBy,
    dynamic? updatedWhen,
    String? imgUrl1,
    dynamic? imgUrl2,
    dynamic? imgUrl3,
    dynamic? imgUrl4,
    dynamic? imgUrl5,
  }) {
    return ProductReview(
      guid: guid ?? this.guid,
      productId: productId ?? this.productId,
      userId: userId ?? this.userId,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      createdBy: createdBy ?? this.createdBy,
      createdWhen: createdWhen ?? this.createdWhen,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedWhen: updatedWhen ?? this.updatedWhen,
      imgUrl1: imgUrl1 ?? this.imgUrl1,
      imgUrl2: imgUrl2 ?? this.imgUrl2,
      imgUrl3: imgUrl3 ?? this.imgUrl3,
      imgUrl4: imgUrl4 ?? this.imgUrl4,
      imgUrl5: imgUrl5 ?? this.imgUrl5,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
      'productId': productId,
      'userId': userId,
      'rating': rating,
      'description': description,
      'isActive': isActive,
      'createdBy': createdBy,
      'createdWhen': createdWhen,
      'updatedBy': updatedBy,
      'updatedWhen': updatedWhen,
      'imgUrl1': imgUrl1,
      'imgUrl2': imgUrl2,
      'imgUrl3': imgUrl3,
      'imgUrl4': imgUrl4,
      'imgUrl5': imgUrl5,
    };
  }

  factory ProductReview.fromMap(Map<String, dynamic> map) {
    return ProductReview(
      guid: map['guid'] != null ? map['guid'] as String : null,
      productId: map['productId'] != null ? map['productId'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      rating: map['rating'] != null ? map['rating'] as int : null,
      description: map['description'] != null ? map['description'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as int : null,
      createdBy: map['createdBy'] != null ? map['createdBy'] as String : null,
      createdWhen: map['createdWhen'] != null ? map['createdWhen'] as String : null,
      updatedBy: map['updatedBy'] != null ? map['updatedBy'] as dynamic : null,
      updatedWhen: map['updatedWhen'] != null ? map['updatedWhen'] as dynamic : null,
      imgUrl1: map['imgUrl1'] != null ? map['imgUrl1'] as String : null,
      imgUrl2: map['imgUrl2'] != null ? map['imgUrl2'] as dynamic : null,
      imgUrl3: map['imgUrl3'] != null ? map['imgUrl3'] as dynamic : null,
      imgUrl4: map['imgUrl4'] != null ? map['imgUrl4'] as dynamic : null,
      imgUrl5: map['imgUrl5'] != null ? map['imgUrl5'] as dynamic : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductReview.fromJson(String source) => ProductReview.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductReview(guid: $guid, productId: $productId, userId: $userId, rating: $rating, description: $description, isActive: $isActive, createdBy: $createdBy, createdWhen: $createdWhen, updatedBy: $updatedBy, updatedWhen: $updatedWhen, imgUrl1: $imgUrl1, imgUrl2: $imgUrl2, imgUrl3: $imgUrl3, imgUrl4: $imgUrl4, imgUrl5: $imgUrl5)';
  }

  @override
  bool operator ==(covariant ProductReview other) {
    if (identical(this, other)) return true;
  
    return 
      other.guid == guid &&
      other.productId == productId &&
      other.userId == userId &&
      other.rating == rating &&
      other.description == description &&
      other.isActive == isActive &&
      other.createdBy == createdBy &&
      other.createdWhen == createdWhen &&
      other.updatedBy == updatedBy &&
      other.updatedWhen == updatedWhen &&
      other.imgUrl1 == imgUrl1 &&
      other.imgUrl2 == imgUrl2 &&
      other.imgUrl3 == imgUrl3 &&
      other.imgUrl4 == imgUrl4 &&
      other.imgUrl5 == imgUrl5;
  }

  @override
  int get hashCode {
    return guid.hashCode ^
      productId.hashCode ^
      userId.hashCode ^
      rating.hashCode ^
      description.hashCode ^
      isActive.hashCode ^
      createdBy.hashCode ^
      createdWhen.hashCode ^
      updatedBy.hashCode ^
      updatedWhen.hashCode ^
      imgUrl1.hashCode ^
      imgUrl2.hashCode ^
      imgUrl3.hashCode ^
      imgUrl4.hashCode ^
      imgUrl5.hashCode;
  }
}
