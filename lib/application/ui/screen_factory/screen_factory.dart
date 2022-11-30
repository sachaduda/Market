import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/basket_screen_cubit/cubit.dart';

import 'package:online_market/application/domain/blocs/main_screen_cubit/cubit.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';
import 'package:online_market/application/ui/screens/basket_screen/basket_screen.dart';
import 'package:online_market/application/ui/screens/main_screen/main_screen.dart';
import 'package:online_market/application/ui/screens/product_details_screen/product_details_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static final instance = ScreenFactory._();

  Widget makeMainScreen() => BlocProvider<MainScreenCubit>(
        create: (_) => MainScreenCubit(),
        child: const MainScreen(),
      );
  Widget makeProductDetailsScreen() => BlocProvider<ProductDetailsScreenCubit>(
        create: (_) => ProductDetailsScreenCubit(),
        child: const ProductDetailsScreen(),
      );
  Widget makeBasketScreen() => BlocProvider<BasketScreenCubit>(
        create: (_) => BasketScreenCubit(),
        child: const BasketScreen(),
      );
}
