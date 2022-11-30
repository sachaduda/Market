// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogModel _$CatalogModelFromJson(Map<String, dynamic> json) => CatalogModel(
      homeStore: (json['home_store'] as List<dynamic>?)
          ?.map((e) => Catalog.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogModelToJson(CatalogModel instance) =>
    <String, dynamic>{
      'home_store': instance.homeStore?.map((e) => e.toJson()).toList(),
      'best_seller': instance.bestSeller?.map((e) => e.toJson()).toList(),
    };

Catalog _$CatalogFromJson(Map<String, dynamic> json) => Catalog(
      id: json['id'] as int?,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      picture: json['picture'] as String?,
      isBuy: json['is_buy'] as bool?,
    );

Map<String, dynamic> _$CatalogToJson(Catalog instance) => <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) => BestSeller(
      id: json['id'] as int?,
      isFavorites: json['is_favorites'] as bool?,
      title: json['title'] as String?,
      priceWithoutDiscount: json['price_without_discount'] as int?,
      discountPrice: json['discount_price'] as int?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$BestSellerToJson(BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
    };
