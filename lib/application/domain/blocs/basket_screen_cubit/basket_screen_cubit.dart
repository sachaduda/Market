part of 'cubit.dart';

class BasketScreenCubit extends Cubit<BasketScreenState> {
  final _hiveStorage = AppHive();

  BasketScreenCubit() : super(BasketScreenState.initial()) {
    _initialize();
  }

  void _initialize() {
    _fetchBasketData();
  }

  Future<void> _fetchBasketData() async {
    emit(state.copyWith(loadingInProgress: true));
    if (await _hiveStorage.hiveStorageIsEmpty()) {
      emit(state.copyWith(basketIsEmpty: true));
    } else {
      emit(
        state.copyWith(
            basketModel: await _hiveStorage.readBoxHive(),
            basketIsEmpty: false),
      );
    }
    emit(state.copyWith(loadingInProgress: false));
  }

  void removeFromBasket(int index) {
    _hiveStorage.removeFromStorage(index);
    _fetchBasketData();
  }

  void clearBasket() {
    emit(state.copyWith(basketIsEmpty: true));
    _hiveStorage.clearHiveStorage();
  }
}
