import 'package:json_annotation/json_annotation.dart';

part 'product_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductDetailsModel {
  final String? cPU;
  final String? camera;
  final List<String>? capacity;
  final List<String>? color;
  final String? id;
  final List<String>? images;
  final bool? isFavorites;
  final int? price;
  final double? rating;
  final String? sd;
  final String? ssd;
  final String? title;

  ProductDetailsModel(
      {required this.cPU,
      required this.camera,
      required this.capacity,
      required this.color,
      required this.id,
      required this.images,
      required this.isFavorites,
      required this.price,
      required this.rating,
      required this.sd,
      required this.ssd,
      required this.title});

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDetailsModelToJson(this);
}
