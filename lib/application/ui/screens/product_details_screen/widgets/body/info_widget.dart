import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetailsModel =
        context.read<ProductDetailsScreenCubit>().state.productDetails!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ProductInfoItemWidget(
          title: productDetailsModel.cPU!,
          icon: Icons.memory,
        ),
        _ProductInfoItemWidget(
          title: productDetailsModel.camera!,
          icon: Icons.photo_camera_outlined,
        ),
        _ProductInfoItemWidget(
          title: productDetailsModel.ssd!,
          icon: Icons.settings_outlined,
        ),
        _ProductInfoItemWidget(
          title: productDetailsModel.sd!,
          icon: Icons.sd_card_outlined,
        ),
      ],
    );
  }
}

class _ProductInfoItemWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const _ProductInfoItemWidget({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          color: const Color(0xffB7B7B7),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xffB7B7B7),
            fontSize: 11,
            fontFamily: 'MarkPro',
          ),
        ),
      ],
    );
  }
}
