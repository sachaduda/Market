import 'package:flutter/material.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/carousel_images_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/info_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/parameters_button_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/parameters_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/rating_widget.dart';
import 'package:online_market/application/ui/screens/product_details_screen/widgets/body/title_widget.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class ProductDetailsBodyWidget extends StatelessWidget {
  const ProductDetailsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ProductDetailsCarouselImagesWidget(),
        const SizedBox(height: 20),
        const ProductDetailsTitleWidget(),
        const ProductRatingWidget(),
        const SizedBox(height: 25),
        const ProductInfoWidget(),
        const SizedBox(height: 30),
        Row(
          children: const [
            SizedBox(width: 35),
            Text(
              'Select color and capacity',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                  fontFamily: 'MarkPro'),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const ProductParametersWidget(),
        const SizedBox(height: 20),
        const ProductParametrsButtonWidget(),
      ],
    );
  }
}
