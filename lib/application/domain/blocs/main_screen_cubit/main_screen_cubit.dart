part of 'cubit.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final _catalogApi = AppApi();
  final _hiveStorage = AppHive();

  MainScreenCubit() : super(MainScreenState.initial()) {
    _initialize();
  }

  Future<void> _initialize() async {
    _fetchCatalogData();
    _initHiveStorage();
  }

  Future<void> _fetchCatalogData() async {
    try {
      final catalogModel = await _catalogApi.fetchCatalog();
      emit(
        state.copyWith(catalogModel: catalogModel),
      );
    } catch (error) {}
  }

  void _initHiveStorage() {
    _hiveStorage.initHive();
  }

  void bottomNavigationBarSetIndex(int index) {
    emit(
      state.copyWith(selectedPageIndex: index),
    );
  }

  void appBarOnChanged(String? selectedCity) {
    emit(
      state.copyWith(selectedCity: selectedCity),
    );
  }

  bool getSelectedGategory(String nameCategory) {
    switch (nameCategory) {
      case 'Phones':
        return state.selectedCategory == CategoryList.phones;
      case "Computers":
        return state.selectedCategory == CategoryList.computer;
      case 'Health':
        return state.selectedCategory == CategoryList.health;
      case 'Books':
        return state.selectedCategory == CategoryList.books;
      case 'Office':
        return state.selectedCategory == CategoryList.office;
      default:
        return false;
    }
  }

  void setSelectedCategory(String nameCategory) {
    switch (nameCategory) {
      case 'Phones':
        emit(state.copyWith(selectedCategory: CategoryList.phones));
        break;
      case "Computers":
        emit(state.copyWith(selectedCategory: CategoryList.computer));
        break;
      case 'Health':
        emit(state.copyWith(selectedCategory: CategoryList.health));
        break;
      case 'Books':
        emit(state.copyWith(selectedCategory: CategoryList.books));
        break;
      case 'Office':
        emit(state.copyWith(selectedCategory: CategoryList.office));
        break;
    }
  }

  Widget getSelectedWidgetFromCategory(bool isCatalog) {
    switch (state.selectedCategory) {
      case CategoryList.phones:
        return isCatalog ? const CatalogWidget() : const HotSalesWidget();
      case CategoryList.computer:
        return isCatalog
            ? const Center(child: Text('Computer catalog'))
            : const Center(child: Text('Computer hot sales'));
      case CategoryList.health:
        return isCatalog
            ? const Center(child: Text('Health catalog'))
            : const Center(child: Text('Health hot sales'));
      case CategoryList.books:
        return isCatalog
            ? const Center(child: Text('Books catalog'))
            : const Center(child: Text('Books hot sales'));
      case CategoryList.office:
        return isCatalog
            ? const Center(child: Text('Office catalog'))
            : const Center(child: Text('Office hot sales'));
    }
  }

  PreferredSizeWidget getAppBar() {
    if (state.selectedPageIndex == 0) {
      return const AppBarWidget();
    } else {
      return const BasketAppBarWidget();
    }
  }
}
