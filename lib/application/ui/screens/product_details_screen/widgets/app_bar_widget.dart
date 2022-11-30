import 'package:flutter/material.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class ProductDetailsAppBarWidget extends StatelessWidget
    with PreferredSizeWidget {
  const ProductDetailsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 35, 10),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const _ProductLeadingButtonWidget(),
        title: const _ProductTitleWidget(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ProductLeadingButtonWidget extends StatelessWidget {
  const _ProductLeadingButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.darkBlue,
      ),
      child: IconButton(
        splashRadius: 1,
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        iconSize: 20,
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}

class _ProductTitleWidget extends StatelessWidget {
  const _ProductTitleWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Product details',
      style: TextStyle(
        color: AppColors.darkBlue,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'MarkPro',
      ),
    );
  }
}
