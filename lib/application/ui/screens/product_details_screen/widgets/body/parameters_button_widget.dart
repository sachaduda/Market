import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';

class ProductParametrsButtonWidget extends StatelessWidget {
  const ProductParametrsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      color: const Color.fromRGBO(255, 110, 78, 1),
      onPressed: () => context
          .read<ProductDetailsScreenCubit>()
          .addProductToCart(
              context.read<ProductDetailsScreenCubit>().createProductForCart()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Add to basket',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '\$${context.read<ProductDetailsScreenCubit>().state.productDetails!.price!.toDouble()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
