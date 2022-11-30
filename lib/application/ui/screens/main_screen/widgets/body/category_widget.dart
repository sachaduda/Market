import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/main_screen_cubit/cubit.dart';
import 'package:online_market/application/domain/models/category_model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((BuildContext context, int index) {
            return _CategorySelectionTabWidget(
              iconCategory: categories[index].icon,
              nameCategory: categories[index].name,
              isSelected: context
                  .read<MainScreenCubit>()
                  .getSelectedGategory(categories[index].name),
              onPressed: context.watch<MainScreenCubit>().setSelectedCategory,
            );
          }),
        ),
      ),
    );
  }
}

class _CategorySelectionTabWidget extends StatelessWidget {
  final IconData iconCategory;
  final String nameCategory;
  final bool isSelected;
  final Function(String name) onPressed;

  const _CategorySelectionTabWidget({
    required this.iconCategory,
    required this.nameCategory,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Column(
        children: [
          MaterialButton(
            shape: const CircleBorder(),
            height: 80,
            minWidth: 80,
            color: isSelected
                ? const Color.fromRGBO(255, 110, 78, 1)
                : Colors.white,
            child: Icon(
              iconCategory,
              color: isSelected ? Colors.white : const Color(0xFFB3B3C3),
              size: 30,
            ),
            onPressed: () {
              onPressed(nameCategory);
            },
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            nameCategory,
            style: TextStyle(
                color: isSelected
                    ? const Color.fromRGBO(255, 110, 78, 1)
                    : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
