import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';

class ProductDetailsCarouselImagesWidget extends StatelessWidget {
  const ProductDetailsCarouselImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 330,
      ),
      items: context
          .read<ProductDetailsScreenCubit>()
          .state
          .productDetails!
          .images!
          .map((item) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    item,
                    width: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
