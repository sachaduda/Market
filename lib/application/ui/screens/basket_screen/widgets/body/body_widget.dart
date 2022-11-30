import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/basket_screen_cubit/cubit.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/body/cart_button_widget.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/body/cart_widget.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/body/cart_total_price_widget.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class BasketBodyWidget extends StatelessWidget {
  const BasketBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketScreenCubit, BasketScreenState>(
        builder: (BuildContext context, state) {
      return !state.loadingInProgress
          ? ColoredBox(
              color: AppColors.darkBlue,
              child: !state.basketIsEmpty
                  ? Column(
                      children: [
                        Expanded(flex: 4, child: CartWidget()),
                        const Expanded(
                          flex: 1,
                          child: TotalPriceWidget(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 2,
                              child: CartButtonWidget(
                                title: 'Chekout',
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: CartButtonWidget(
                                title: 'Clear',
                                onPressed: context
                                    .watch<BasketScreenCubit>()
                                    .clearBasket,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    )
                  : const Center(
                      child: Text(
                        'Cart is empty',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'MarkPro',
                        ),
                      ),
                    ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
