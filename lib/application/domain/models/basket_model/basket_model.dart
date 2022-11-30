import 'package:json_annotation/json_annotation.dart';

part 'basket_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BasketModel {
  final List<Basket>? basket;
  final String? delivery;
  final String? id;
  final int? total;

  BasketModel(
      {required this.basket,
      required this.delivery,
      required this.id,
      required this.total});

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
  Map<String, dynamic> toJson() => _$BasketModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Basket {
  final int? id;
  final String? images;
  final int? price;
  final String? title;

  Basket(
      {required this.id,
      required this.images,
      required this.price,
      required this.title});

  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);
  Map<String, dynamic> toJson() => _$BasketToJson(this);
}
