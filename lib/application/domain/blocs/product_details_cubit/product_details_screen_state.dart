part of 'cubit.dart';

enum ItemsList { first, second }

class ProductDetailsScreenState {
  final ProductDetailsModel? productDetails;
  final String? selectedColor;
  final String? selectedMemory;
  final ItemsList selectedItemColor;
  final ItemsList selectedItemMemory;
  ProductDetailsScreenState({
    required this.productDetails,
    required this.selectedColor,
    required this.selectedMemory,
    required this.selectedItemColor,
    required this.selectedItemMemory,
  });

  factory ProductDetailsScreenState.initial() => ProductDetailsScreenState(
        productDetails: null,
        selectedColor: null,
        selectedMemory: null,
        selectedItemColor: ItemsList.first,
        selectedItemMemory: ItemsList.first,
      );

  ProductDetailsScreenState copyWith({
    ProductDetailsModel? productDetails,
    String? selectedColor,
    String? selectedMemory,
    ItemsList? selectedItemColor,
    ItemsList? selectedItemMemory,
  }) {
    return ProductDetailsScreenState(
      productDetails: productDetails ?? this.productDetails,
      selectedColor: selectedColor ?? this.selectedColor,
      selectedMemory: selectedMemory ?? this.selectedMemory,
      selectedItemColor: selectedItemColor ?? this.selectedItemColor,
      selectedItemMemory: selectedItemMemory ?? this.selectedItemMemory,
    );
  }

  @override
  String toString() {
    return 'ProductDetailsScreenState(productDetails: $productDetails, selectedColor: $selectedColor, selectedMemory: $selectedMemory, selectedItemColor: $selectedItemColor, selectedItemMemory: $selectedItemMemory)';
  }

  @override
  bool operator ==(covariant ProductDetailsScreenState other) {
    if (identical(this, other)) return true;

    return other.productDetails == productDetails &&
        other.selectedColor == selectedColor &&
        other.selectedMemory == selectedMemory &&
        other.selectedItemColor == selectedItemColor &&
        other.selectedItemMemory == selectedItemMemory;
  }

  @override
  int get hashCode {
    return productDetails.hashCode ^
        selectedColor.hashCode ^
        selectedMemory.hashCode ^
        selectedItemColor.hashCode ^
        selectedItemMemory.hashCode;
  }
}
