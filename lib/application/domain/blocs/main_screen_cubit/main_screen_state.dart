part of 'cubit.dart';

class MainScreenState {
  final CatalogModel? catalogModel;
  final int selectedPageIndex;
  final String selectedCity;
  final List<Widget> bodyWidgets;
  final List<String> cities;
  final CategoryList selectedCategory;

  MainScreenState(
      {required this.catalogModel,
      required this.selectedPageIndex,
      required this.bodyWidgets,
      required this.cities,
      required this.selectedCity,
      required this.selectedCategory});

  factory MainScreenState.initial() => MainScreenState(
        catalogModel: null,
        selectedPageIndex: 0,
        cities: ['Russia, Moscow', 'Russia, Kaliningrad', 'Russia, Novgorod'],
        selectedCity: 'Russia, Moscow',
        bodyWidgets: [
          const BodyWidget(),
          ScreenFactory.instance.makeBasketScreen(),
          const Center(child: Text('Favorite')),
          const Center(child: Text('Account')),
        ],
        selectedCategory: CategoryList.phones,
      );

  MainScreenState copyWith({
    CatalogModel? catalogModel,
    int? selectedPageIndex,
    String? selectedCity,
    List<Widget>? bodyWidgets,
    List<String>? cities,
    CategoryList? selectedCategory,
  }) {
    return MainScreenState(
      catalogModel: catalogModel ?? this.catalogModel,
      selectedPageIndex: selectedPageIndex ?? this.selectedPageIndex,
      selectedCity: selectedCity ?? this.selectedCity,
      bodyWidgets: bodyWidgets ?? this.bodyWidgets,
      cities: cities ?? this.cities,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }

  @override
  String toString() {
    return 'MainScreenState(catalogModel: $catalogModel, selectedPageIndex: $selectedPageIndex, selectedCity: $selectedCity, bodyWidgets: $bodyWidgets, cities: $cities, isSelectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(covariant MainScreenState other) {
    if (identical(this, other)) return true;

    return other.catalogModel == catalogModel &&
        other.selectedPageIndex == selectedPageIndex &&
        other.selectedCity == selectedCity &&
        listEquals(other.bodyWidgets, bodyWidgets) &&
        listEquals(other.cities, cities) &&
        other.selectedCategory == selectedCategory;
  }

  @override
  int get hashCode {
    return catalogModel.hashCode ^
        selectedPageIndex.hashCode ^
        selectedCity.hashCode ^
        bodyWidgets.hashCode ^
        cities.hashCode ^
        selectedCategory.hashCode;
  }
}
