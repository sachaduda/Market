import 'package:flutter/material.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class BasketAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const BasketAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 35, 10),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const _BasketTitleWidget(),
        actions: const [
          _BasketActionButtonWidget(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BasketTitleWidget extends StatelessWidget {
  const _BasketTitleWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My cart',
      style: TextStyle(
        color: AppColors.darkBlue,
        fontSize: 28,
        fontWeight: FontWeight.w500,
        fontFamily: 'MarkPro',
      ),
    );
  }
}

class _BasketActionButtonWidget extends StatelessWidget {
  const _BasketActionButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.orange,
      ),
      child: IconButton(
        splashRadius: 20,
        iconSize: 20,
        icon: const Icon(Icons.location_on),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
