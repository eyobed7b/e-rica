 
import 'package:json_annotation/json_annotation.dart';
 
import 'package:rica/entity/shop_entity.dart';

import 'base_entity.dart';
part 'product_entity.g.dart';

/**
 * product.dart
 * 商品列表
 *
 * @author: Ruoyegz
 * @date: 2021/6/30
 */
@JsonSerializable()
class ProductList {
 

  List<Product> data;

  ProductList(  this.data);

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}

/**
 * product.dart
 * 商铺详情
 * @author: Ruoyegz
 * @date: 2021/7/5
 */
@JsonSerializable()
class ProductDetailBody {
  Product data;

  ProductDetailBody(this.data);

  factory ProductDetailBody.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailBodyToJson(this);
}

/**
 * product
 * 商品信息
 *
 * @author: Ruoyegz
 * @date: 2021/6/30
 */
@JsonSerializable()
class Product {
  String id;

  @JsonKey(name: "user_id")
  String? userId;

  String? name;
  String? currency;
  String? description;

  List<ImageEntity>? image;

  @JsonKey(name: "created_at")
  String? createdAt;

  @JsonKey(name: "format_price")
  String? formatPrice;

  double? price;

  @JsonKey(name: "average_point")
  double? averagePoint;

  int? like;
  int? status;

  /// 购物车：所选商品数量
  int? goodsNumber;

  bool? isChecked = false;

  @JsonKey(name: "user")
  Shop? shop;

  /// 1.1.0: 数值版特价
  @JsonKey(name: "specialPrice")
  double? specPrice;

  /// 1.1.0: 包装费
  @JsonKey(name: "packaging_cost")
  double? packageCoast;

  /// 1.1.0: 折扣价格
  @JsonKey(name: "discounted_price")
  double? disPrice;

  /// 1.1.0: 格式化折扣价格
  @JsonKey(name: "format_discounted_price")
  String? formatDisPrice;

  @JsonKey(name: "discount_price")
  double? discountPrice;

  @JsonKey(name: "restaurant_name")
  String? restaurantName;

  /// 1.1.0: 格式化包装费
  @JsonKey(name: "format_packaging_cost")
  String? formatPackagePrice;

  /// 1.1.0: 免费配送
  bool? freeDelivery;

  /// 官方分类
  bool isGFCategory() {
    return disPrice != null && disPrice != -1.0;
  }

  bool alreadyChecked() {
    return isChecked != null && isChecked!;
  }

  String productImage() {
    if (image != null && image!.isNotEmpty) {
      return image![0].url;
    }
    return "";
  }

  Product(
      {required this.id,
      this.userId,
      this.name,
      this.currency,
      this.description,
      this.image,
      this.createdAt,
      this.formatPrice,
      this.price,
      this.averagePoint,
      this.like,
      this.status,
      this.goodsNumber,
      this.shop,
      this.specPrice,
      this.packageCoast,
      this.disPrice,
      this.formatDisPrice,
      this.formatPackagePrice,
      this.freeDelivery,
      this.discountPrice,
      this.restaurantName});

  factory Product.create() {
    return Product(
        id: "",
        userId: "",
        name: "",
        currency: "",
        description: "",
        image: [],
        createdAt: "",
        formatPrice: "",
        price: 0.0,
        averagePoint: 0.0,
        like: 0,
        status: 0,
        discountPrice: 0);
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

/**
 * SpecProductList
 * 特价商品列表
 *
 * @author: Ruoyegz
 * @date: 2021/6/30
 */
@JsonSerializable()
class SpecProductList {
  Links? links;
  Metadata? meta;

  List<SpecProduct> data;

  SpecProductList(this.links, this.meta, this.data);

  factory SpecProductList.fromJson(Map<String, dynamic> json) =>
      _$SpecProductListFromJson(json);

  Map<String, dynamic> toJson() => _$SpecProductListToJson(this);
}

/**
 * product_entity.dart
 * 特价商品
 * @author: Ruoyegz
 * @date: 2021/8/5
 */
@JsonSerializable()
class SpecialProductBody {
  SpecialProduct data;

  SpecialProductBody(this.data);

  factory SpecialProductBody.fromJson(Map<String, dynamic> json) =>
      _$SpecialProductBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialProductBodyToJson(this);
}

/**
 * product_entity.dart
 * 特价商品
 * @author: Ruoyegz
 * @date: 2021/8/5
 */
@JsonSerializable()
class SpecialProduct {
  int count;
  String image;

  SpecialProduct(this.count, this.image);

  factory SpecialProduct.fromJson(Map<String, dynamic> json) =>
      _$SpecialProductFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialProductToJson(this);
}

@JsonSerializable()
class SliderItem {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "active")
  int? active;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "redirect_to")
  String? redirect_to;
  @JsonKey(name: "outgoing_url")
  String? outgoing_url;
  @JsonKey(name: "link_type")
  String? link_type;
  @JsonKey(name: "promotion_clicks")
  String? promotion_clicks;

  @JsonKey(name: "link_details")
  linkDetails? link_details;

  // String? promotion_clicks;

// {"id":1,"active":0,"type":"mobile","name":"Special Offer","description":null,
// "image":"images\/promotion\/image_2022-01-13_12-10-37.png","redirect_to":"in_app",
// "outgoing_url":null,"link_type":"screen",
// "link_details":{"screen_location":"special_offer"},"promotion_clicks":null,
// "created_at":"2022-01-15 15:05:14","updated_at":"2022-01-15 15:21:56"}

  SliderItem(
    this.id,
    this.active,
    this.description,
    this.link_type,
    this.name,
    this.outgoing_url,
    this.promotion_clicks,
    this.redirect_to,
    this.type,
    this.link_details,
  );

  factory SliderItem.fromJson(Map<String, dynamic> json) {
    return _$SliderItemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SliderItemToJson(this);
}

/**
 * product_entity.dart
 * 特价商品
 * @author: Ruoyegz
 * @date: 2021/8/5
 */
@JsonSerializable()
class SliderItemList {
  Links? links;
  Metadata? meta;

  List<SliderItem> data;

  SliderItemList(this.links, this.meta, this.data);

  factory SliderItemList.fromJson(Map<String, dynamic> json) {
  ///  Boxes.getAppData().put("slider", json);
 
    return _$SliderItemListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SliderItemListToJson(this);
}

@JsonSerializable()
class SpecProduct {
  String id;

  @JsonKey(name: "user_id")
  String? userId;

  String? name;
  String? currency;
  String? description;

  List<ImageEntity>? image;

  @JsonKey(name: "created_at")
  String? createdAt;

  @JsonKey(name: "format_price")
  String? formatPrice;

  double? price;

  @JsonKey(name: "average_point")
  double? averagePoint;

  int? like;
  int? status;

  /// 购物车：所选商品数量
  int? goodsNumber;

  bool? isChecked = false;

  @JsonKey(name: "user")
  Shop? shop;

  Product? product;

  /// 1.1.0: 特价
  String? specialPrice;

  SpecProduct(
      this.id,
      this.userId,
      this.name,
      this.currency,
      this.description,
      this.image,
      this.createdAt,
      this.formatPrice,
      this.price,
      this.averagePoint,
      this.like,
      this.status,
      this.goodsNumber,
      this.isChecked,
      this.shop,
      this.specialPrice);

  factory SpecProduct.fromJson(Map<String, dynamic> json) =>
      _$SpecProductFromJson(json);

  Map<String, dynamic> toJson() => _$SpecProductToJson(this);
}

@JsonSerializable()
class linkDetails {
  @JsonKey(name: "restaurant")
  Shop? shop;
  @JsonKey(name: "product")
  String? product;

  @JsonKey(name: "screen_location")
  String? screen_location;

  linkDetails(this.product);

  factory linkDetails.fromJson(Map<String, dynamic> json) =>
      _$linkDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$linkDetailsToJson(this);
}
