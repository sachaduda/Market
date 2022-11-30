import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/main_screen_cubit/cubit.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/body/category_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/body/info_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/body/search_widget.dart';

class BodyWidget extends StatelessWidget {
  final bool isCatalog = true;
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryInfoWidget(
            mainText: 'Select category',
            buttonText: 'view all',
            onPressed: () {},
          ),
          const SizedBox(height: 24),
          const CategoryWidget(),
          const SizedBox(height: 35),
          const CatalogSearchWidget(),
          const SizedBox(height: 24),
          CategoryInfoWidget(
            mainText: 'Hot sales',
            buttonText: 'see more',
            onPressed: () {},
          ),
          const SizedBox(height: 5),
          context
              .watch<MainScreenCubit>()
              .getSelectedWidgetFromCategory(!isCatalog),
          const SizedBox(height: 5),
          CategoryInfoWidget(
            mainText: 'Catalog',
            buttonText: 'see more',
            onPressed: () {},
          ),
          const SizedBox(height: 5),
          context
              .watch<MainScreenCubit>()
              .getSelectedWidgetFromCategory(isCatalog),
        ],
      ),
    );
  }
}
