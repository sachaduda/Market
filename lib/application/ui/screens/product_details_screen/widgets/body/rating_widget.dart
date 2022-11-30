import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(38, 7, 0, 0),
      child: RatingStars(
        value: context
            .read<ProductDetailsScreenCubit>()
            .state
            .productDetails!
            .rating!,
        starBuilder: (int index, color) => Icon(
          Icons.star_rate,
          color: color,
        ),
        starCount: 5,
        starSize: 25,
        valueLabelVisibility: false,
        maxValue: 5,
        starSpacing: 2,
        maxValueVisibility: true,
        valueLabelMargin: const EdgeInsets.only(right: 8),
        starOffColor: const Color(0xffe7e8ea),
        starColor: const Color(0xffFFB800),
      ),
    );
  }
}
