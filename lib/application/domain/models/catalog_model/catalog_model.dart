import 'package:json_annotation/json_annotation.dart';

part 'catalog_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogModel {
  final List<Catalog>? homeStore;
  final List<BestSeller>? bestSeller;

  CatalogModel({required this.homeStore, required this.bestSeller});
  factory CatalogModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogModelFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Catalog {
  final int? id;
  final bool? isNew;
  final String? title;
  final String? subtitle;
  final String? picture;
  final bool? isBuy;

  Catalog(
      {required this.id,
      required this.isNew,
      required this.title,
      required this.subtitle,
      required this.picture,
      required this.isBuy});

  factory Catalog.fromJson(Map<String, dynamic> json) =>
      _$CatalogFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BestSeller {
  final int? id;
  final bool? isFavorites;
  final String? title;
  final int? priceWithoutDiscount;
  final int? discountPrice;
  final String? picture;

  BestSeller(
      {required this.id,
      required this.isFavorites,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);
  Map<String, dynamic> toJson() => _$BestSellerToJson(this);
}
