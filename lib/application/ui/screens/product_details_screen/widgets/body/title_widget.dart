import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class ProductDetailsTitleWidget extends StatelessWidget {
  const ProductDetailsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          context
              .read<ProductDetailsScreenCubit>()
              .state
              .productDetails!
              .title!,
          style: const TextStyle(
              color: AppColors.darkBlue, fontSize: 24, fontFamily: 'MarkPro'),
        ),
        Ink(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.darkBlue,
          ),
          child: IconButton(
            splashRadius: 19,
            icon: const Icon(Icons.favorite_border_outlined),
            color: Colors.white,
            iconSize: 20,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
