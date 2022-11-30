part of 'cubit.dart';

class BasketScreenState {
  final List<BasketHiveModel?>? basketModel;
  final bool basketIsEmpty;
  final bool loadingInProgress;

  BasketScreenState({
    required this.basketModel,
    required this.basketIsEmpty,
    required this.loadingInProgress,
  });

  factory BasketScreenState.initial() => BasketScreenState(
        basketModel: null,
        basketIsEmpty: true,
        loadingInProgress: false,
      );

  BasketScreenState copyWith({
    List<BasketHiveModel?>? basketModel,
    bool? basketIsEmpty,
    bool? loadingInProgress,
  }) {
    return BasketScreenState(
      basketModel: basketModel ?? this.basketModel,
      basketIsEmpty: basketIsEmpty ?? this.basketIsEmpty,
      loadingInProgress: loadingInProgress ?? this.loadingInProgress,
    );
  }

  @override
  String toString() =>
      'BasketScreenState(basketModel: $basketModel, basketIsEmpty: $basketIsEmpty, loadingInProgress: $loadingInProgress)';

  @override
  bool operator ==(covariant BasketScreenState other) {
    if (identical(this, other)) return true;

    return listEquals(other.basketModel, basketModel) &&
        other.basketIsEmpty == basketIsEmpty &&
        other.loadingInProgress == loadingInProgress;
  }

  @override
  int get hashCode =>
      basketModel.hashCode ^
      basketIsEmpty.hashCode ^
      loadingInProgress.hashCode;
}
