part of 'cubit.dart';

class ProductDetailsScreenCubit extends Cubit<ProductDetailsScreenState> {
  final _catalogApi = AppApi();
  final _hiveStorage = AppHive();

  ProductDetailsScreenCubit() : super(ProductDetailsScreenState.initial()) {
    _initialize();
  }

  Future<void> _initialize() async {
    _fetchProductDetailsData();
  }

  Future<void> _fetchProductDetailsData() async {
    try {
      final productDetails = await _catalogApi.fetchProductDetails();
      emit(
        state.copyWith(productDetails: productDetails),
      );
    } catch (error) {}
  }

  bool getSelectedItem(int index, bool isColorItem) {
    switch (index) {
      case 0:
        return isColorItem
            ? state.selectedItemColor == ItemsList.first
            : state.selectedItemMemory == ItemsList.first;
      case 1:
        return isColorItem
            ? state.selectedItemColor == ItemsList.second
            : state.selectedItemMemory == ItemsList.second;
      default:
        return false;
    }
  }

  void setSelectedItem(int index, bool isColorItem) {
    switch (index) {
      case 0:
        isColorItem
            ? emit(state.copyWith(selectedItemColor: ItemsList.first))
            : emit(state.copyWith(selectedItemMemory: ItemsList.first));
        break;
      case 1:
        isColorItem
            ? emit(state.copyWith(selectedItemColor: ItemsList.second))
            : emit(state.copyWith(selectedItemMemory: ItemsList.second));
        break;
    }
  }

  void setSelectedColor(String color) {
    emit(state.copyWith(selectedColor: color));
  }

  void setSelectedMemory(String memory) {
    emit(state.copyWith(selectedMemory: memory));
  }

  BasketHiveModel createProductForCart() {
    if (state.selectedColor == null) {
      emit(state.copyWith(selectedColor: state.productDetails!.color!.first));
    }
    if (state.selectedMemory == null) {
      emit(state.copyWith(
          selectedMemory: state.productDetails!.capacity!.first));
    }
    return BasketHiveModel(
      title: state.productDetails!.title!,
      price: state.productDetails!.price!,
      image: state.productDetails!.images!.first,
      color: state.selectedColor!,
      memory: state.selectedMemory!,
    );
  }

  void addProductToCart(BasketHiveModel product) {
    _hiveStorage.addInHive(product);
  }
}
