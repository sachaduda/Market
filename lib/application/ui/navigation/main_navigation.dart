import 'package:flutter/material.dart';
import 'package:online_market/application/ui/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = '/';
  static const productDetails = '/product_details';
  static const basket = '/basket';
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        Screens.main: (context) => ScreenFactory.instance.makeMainScreen(),
        Screens.productDetails: (context) =>
            ScreenFactory.instance.makeProductDetailsScreen(),
        Screens.basket: (context) => ScreenFactory.instance.makeBasketScreen(),
      };
}
