import 'package:flutter/material.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/body/body_widget.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BasketBodyWidget(),
    );
  }
}
