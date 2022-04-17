// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductList _$ProductListFromJson(Map<String, dynamic> json) => ProductList(
      (json['data'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductListToJson(ProductList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductDetailBody _$ProductDetailBodyFromJson(Map<String, dynamic> json) =>
    ProductDetailBody(
      Product.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailBodyToJson(ProductDetailBody instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      name: json['name'] as String?,
      currency: json['currency'] as String?,
      description: json['description'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      formatPrice: json['format_price'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      averagePoint: (json['average_point'] as num?)?.toDouble(),
      like: json['like'] as int?,
      status: json['status'] as int?,
      goodsNumber: json['goodsNumber'] as int?,
      shop: json['user'] == null
          ? null
          : Shop.fromJson(json['user'] as Map<String, dynamic>),
      specPrice: (json['specialPrice'] as num?)?.toDouble(),
      packageCoast: (json['packaging_cost'] as num?)?.toDouble(),
      disPrice: (json['discounted_price'] as num?)?.toDouble(),
      formatDisPrice: json['format_discounted_price'] as String?,
      formatPackagePrice: json['format_packaging_cost'] as String?,
      freeDelivery: json['freeDelivery'] as bool?,
      discountPrice: (json['discount_price'] as num?)?.toDouble(),
      restaurantName: json['restaurant_name'] as String?,
    )..isChecked = json['isChecked'] as bool?;

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'currency': instance.currency,
      'description': instance.description,
      'image': instance.image,
      'created_at': instance.createdAt,
      'format_price': instance.formatPrice,
      'price': instance.price,
      'average_point': instance.averagePoint,
      'like': instance.like,
      'status': instance.status,
      'goodsNumber': instance.goodsNumber,
      'isChecked': instance.isChecked,
      'user': instance.shop,
      'specialPrice': instance.specPrice,
      'packaging_cost': instance.packageCoast,
      'discounted_price': instance.disPrice,
      'format_discounted_price': instance.formatDisPrice,
      'discount_price': instance.discountPrice,
      'restaurant_name': instance.restaurantName,
      'format_packaging_cost': instance.formatPackagePrice,
      'freeDelivery': instance.freeDelivery,
    };

SpecProductList _$SpecProductListFromJson(Map<String, dynamic> json) =>
    SpecProductList(
      json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      json['meta'] == null
          ? null
          : Metadata.fromJson(json['meta'] as Map<String, dynamic>),
      (json['data'] as List<dynamic>)
          .map((e) => SpecProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecProductListToJson(SpecProductList instance) =>
    <String, dynamic>{
      'links': instance.links,
      'meta': instance.meta,
      'data': instance.data,
    };

SpecialProductBody _$SpecialProductBodyFromJson(Map<String, dynamic> json) =>
    SpecialProductBody(
      SpecialProduct.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecialProductBodyToJson(SpecialProductBody instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SpecialProduct _$SpecialProductFromJson(Map<String, dynamic> json) =>
    SpecialProduct(
      json['count'] as int,
      json['image'] as String,
    );

Map<String, dynamic> _$SpecialProductToJson(SpecialProduct instance) =>
    <String, dynamic>{
      'count': instance.count,
      'image': instance.image,
    };

SliderItem _$SliderItemFromJson(Map<String, dynamic> json) => SliderItem(
      json['id'] as int?,
      json['active'] as int?,
      json['description'] as String?,
      json['link_type'] as String?,
      json['name'] as String?,
      json['outgoing_url'] as String?,
      json['promotion_clicks'] as String?,
      json['redirect_to'] as String?,
      json['type'] as String?,
      json['link_details'] == null
          ? null
          : linkDetails.fromJson(json['link_details'] as Map<String, dynamic>),
    )..image = json['image'] as String?;

Map<String, dynamic> _$SliderItemToJson(SliderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'redirect_to': instance.redirect_to,
      'outgoing_url': instance.outgoing_url,
      'link_type': instance.link_type,
      'promotion_clicks': instance.promotion_clicks,
      'link_details': instance.link_details,
    };

SliderItemList _$SliderItemListFromJson(Map<String, dynamic> json) =>
    SliderItemList(
      json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      json['meta'] == null
          ? null
          : Metadata.fromJson(json['meta'] as Map<String, dynamic>),
      (json['data'] as List<dynamic>)
          .map((e) => SliderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SliderItemListToJson(SliderItemList instance) =>
    <String, dynamic>{
      'links': instance.links,
      'meta': instance.meta,
      'data': instance.data,
    };

SpecProduct _$SpecProductFromJson(Map<String, dynamic> json) => SpecProduct(
      json['id'] as String,
      json['user_id'] as String?,
      json['name'] as String?,
      json['currency'] as String?,
      json['description'] as String?,
      (json['image'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['created_at'] as String?,
      json['format_price'] as String?,
      (json['price'] as num?)?.toDouble(),
      (json['average_point'] as num?)?.toDouble(),
      json['like'] as int?,
      json['status'] as int?,
      json['goodsNumber'] as int?,
      json['isChecked'] as bool?,
      json['user'] == null
          ? null
          : Shop.fromJson(json['user'] as Map<String, dynamic>),
      json['specialPrice'] as String?,
    )..product = json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$SpecProductToJson(SpecProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'currency': instance.currency,
      'description': instance.description,
      'image': instance.image,
      'created_at': instance.createdAt,
      'format_price': instance.formatPrice,
      'price': instance.price,
      'average_point': instance.averagePoint,
      'like': instance.like,
      'status': instance.status,
      'goodsNumber': instance.goodsNumber,
      'isChecked': instance.isChecked,
      'user': instance.shop,
      'product': instance.product,
      'specialPrice': instance.specialPrice,
    };

linkDetails _$linkDetailsFromJson(Map<String, dynamic> json) => linkDetails(
      json['product'] as String?,
    )
      ..shop = json['restaurant'] == null
          ? null
          : Shop.fromJson(json['restaurant'] as Map<String, dynamic>)
      ..screen_location = json['screen_location'] as String?;

Map<String, dynamic> _$linkDetailsToJson(linkDetails instance) =>
    <String, dynamic>{
      'restaurant': instance.shop,
      'product': instance.product,
      'screen_location': instance.screen_location,
    };
