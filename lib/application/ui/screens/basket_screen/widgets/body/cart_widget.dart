import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:online_market/application/domain/blocs/basket_screen_cubit/cubit.dart';
import 'package:online_market/application/domain/models/basket_hive_model/basket_hive_model.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';
import 'package:online_market/application/utilities/color_extention.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: ListView.builder(
          itemCount:
              context.read<BasketScreenCubit>().state.basketModel!.length,
          itemBuilder: (BuildContext context, int index) {
            return _CartItemWidget(
                index: index,
                basketModel: context
                    .read<BasketScreenCubit>()
                    .state
                    .basketModel!
                    .elementAt(index)!);
          }),
    );
  }
}

class _CartItemWidget extends StatelessWidget {
  final int index;
  final BasketHiveModel basketModel;

  const _CartItemWidget({
    Key? key,
    required this.index,
    required this.basketModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              basketModel.image,
              height: 130,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (basketModel.title),
                  softWrap: true,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'MarkPro',
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Memory ${basketModel.memory} GB',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MarkPro',
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Text(
                      'Color ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'MarkPro',
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: HexColor.fromHex(basketModel.color),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  r'$' + basketModel.price.toString(),
                  style: const TextStyle(
                    color: AppColors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'MarkPro',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: _CartItemButtonsWidget(
                index: index,
                onPressedDeleteIcon:
                    context.read<BasketScreenCubit>().removeFromBasket),
          ),
        ],
      ),
    );
  }
}

class _CartItemButtonsWidget extends StatelessWidget {
  final int index;
  final Function(int index) onPressedDeleteIcon;
  const _CartItemButtonsWidget(
      {required this.index, required this.onPressedDeleteIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ColoredBox(
              color: Colors.white54,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  const Text('2'),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            onPressedDeleteIcon(index);
          },
          icon: const Icon(
            Icons.delete_outline,
            color: Colors.white54,
          ),
        )
      ],
    );
  }
}
