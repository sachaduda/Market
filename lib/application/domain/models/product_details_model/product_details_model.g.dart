// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    ProductDetailsModel(
      cPU: json['CPU'] as String?,
      camera: json['camera'] as String?,
      capacity: (json['capacity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isFavorites: json['isFavorites'] as bool?,
      price: json['price'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      sd: json['sd'] as String?,
      ssd: json['ssd'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        ProductDetailsModel instance) =>
    <String, dynamic>{
      'CPU': instance.cPU,
      'camera': instance.camera,
      'capacity': instance.capacity,
      'color': instance.color,
      'id': instance.id,
      'images': instance.images,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
    };
