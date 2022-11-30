import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/product_details_cubit/cubit.dart';
import 'package:online_market/application/utilities/color_extention.dart';

class ProductParametersWidget extends StatelessWidget {
  const ProductParametersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetailsModel =
        context.read<ProductDetailsScreenCubit>().state.productDetails!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(children: [
          ...List.generate(
            productDetailsModel.color!.length,
            (index) => _ProductParametersItemColorWidget(
              color: productDetailsModel.color![index],
              index: index,
              isSelected: context
                  .read<ProductDetailsScreenCubit>()
                  .getSelectedItem(index, true),
              onPressed:
                  context.watch<ProductDetailsScreenCubit>().setSelectedItem,
            ),
          ),
        ]),
        Row(
          children: [
            ...List.generate(
              productDetailsModel.color!.length,
              (index) => _ProductParametersItemMemoryWidget(
                memory: productDetailsModel.capacity![index],
                index: index,
                isSelected: context
                    .read<ProductDetailsScreenCubit>()
                    .getSelectedItem(index, false),
                onPressed:
                    context.watch<ProductDetailsScreenCubit>().setSelectedItem,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProductParametersItemColorWidget extends StatelessWidget {
  final String color;
  final bool isSelected;
  final int index;
  final Function(int index, bool isColorItem) onPressed;

  const _ProductParametersItemColorWidget({
    required this.color,
    required this.isSelected,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      height: 40,
      minWidth: 40,
      color: HexColor.fromHex(color),
      onPressed: () {
        onPressed(index, true);
        context.read<ProductDetailsScreenCubit>().setSelectedColor(color);
      },
      child: isSelected
          ? const Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            )
          : const SizedBox.shrink(),
    );
  }
}

class _ProductParametersItemMemoryWidget extends StatelessWidget {
  final String memory;
  final bool isSelected;
  final int index;
  final Function(int index, bool isColorItem) onPressed;

  const _ProductParametersItemMemoryWidget({
    required this.memory,
    required this.isSelected,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 31,
      color: isSelected ? const Color.fromRGBO(255, 110, 78, 1) : Colors.white,
      onPressed: () {
        onPressed(index, false);
        context.read<ProductDetailsScreenCubit>().setSelectedMemory(memory);
      },
      child: Text(
        '$memory GB',
        style: TextStyle(
            color: isSelected
                ? Colors.white
                : const Color.fromRGBO(141, 141, 141, 1),
            fontSize: 13,
            fontFamily: 'MarkPro'),
      ),
    );
  }
}
