import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/app_bar_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/body_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetails =
        context.watch<ProductDetailsScreenCubit>().state.productDetails;
    if (productDetails == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return const Scaffold(
      appBar: ProductDetailsAppBarWidget(),
      body: ProductDetailsBodyWidget(),
    );
  }
}
