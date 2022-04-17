// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPoint _$UserPointFromJson(Map<String, dynamic> json) => UserPoint(
      (json['point'] as num).toDouble(),
      json['comment'] as int,
      percentage: json['percentage'] == null
          ? null
          : PercentAge.fromJson(json['percentage']),
    );

Map<String, dynamic> _$UserPointToJson(UserPoint instance) {
  final val = <String, dynamic>{
    'point': instance.point,
    'comment': instance.comment,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('percentage', instance.percentage);
  return val;
}

PercentAge _$PercentAgeFromJson(Map<String, dynamic> json) => PercentAge(
      (json['point_1'] as num).toDouble(),
      (json['point_2'] as num).toDouble(),
      (json['point_3'] as num).toDouble(),
      (json['point_4'] as num).toDouble(),
      (json['point_5'] as num).toDouble(),
    );

Map<String, dynamic> _$PercentAgeToJson(PercentAge instance) =>
    <String, dynamic>{
      'point_1': instance.point1,
      'point_2': instance.point2,
      'point_3': instance.point3,
      'point_4': instance.point4,
      'point_5': instance.point5,
    };

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) => ImageEntity(
      json['height'] as int,
      json['width'] as int,
      json['url'] as String,
    );

Map<String, dynamic> _$ImageEntityToJson(ImageEntity instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      data: json['data'] == null
          ? null
          : SearchModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'data': instance.data,
    };

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      restaurants: json['restaurants'] == null
          ? null
          : ShopList.fromJson(json['restaurants'] as Map<String, dynamic>),
      foods: json['foods'] == null
          ? null
          : ProductList.fromJson(json['foods'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'restaurants': instance.restaurants,
      'foods': instance.foods,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      json['first'] as String?,
      json['last'] as String?,
      json['prev'] as String?,
      json['next'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      json['to'] as int?,
      json['from'] as int?,
      json['total'] as int?,
      json['current_page'] as int?,
      json['last_page'] as int?,
      json['per_page'] as int?,
      json['path'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'total': instance.total,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'path': instance.path,
    };

HttpError _$HttpErrorFromJson(Map<String, dynamic> json) => HttpError(
      json['message'] as String?,
    );

Map<String, dynamic> _$HttpErrorToJson(HttpError instance) => <String, dynamic>{
      'message': instance.message,
    };

UploadResBody _$UploadResBodyFromJson(Map<String, dynamic> json) =>
    UploadResBody(
      (json['form'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      json['action'] as String?,
      json['domain'] as String?,
    );

Map<String, dynamic> _$UploadResBodyToJson(UploadResBody instance) =>
    <String, dynamic>{
      'form': instance.form,
      'action': instance.action,
      'domain': instance.domain,
    };

VersionBody _$VersionBodyFromJson(Map<String, dynamic> json) => VersionBody(
      VersionInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionBodyToJson(VersionBody instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) => VersionInfo(
      json['platform'] as String,
      json['version'] as String,
      json['last'] as String,
      json['upgrade_point'] as String,
      json['isUpgrade'] as bool,
      json['mustUpgrade'] as bool,
      isNone: json['isNone'] as bool? ?? false,
    );

Map<String, dynamic> _$VersionInfoToJson(VersionInfo instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'version': instance.version,
      'last': instance.last,
      'upgrade_point': instance.upgrade_point,
      'isUpgrade': instance.isUpgrade,
      'mustUpgrade': instance.mustUpgrade,
      'isNone': instance.isNone,
    };
