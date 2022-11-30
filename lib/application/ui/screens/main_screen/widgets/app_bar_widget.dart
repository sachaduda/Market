import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/main_screen_cubit/cubit.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundWhite,
      centerTitle: true,
      title: const _AppBarTitleIconWidget(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            splashRadius: 20,
            color: Colors.black,
            onPressed: () {},
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarTitleIconWidget extends StatelessWidget {
  const _AppBarTitleIconWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.orange,
          ),
          SizedBox(width: 15),
          _AppBarDropdownWidget()
        ],
      ),
    );
  }
}

class _AppBarDropdownWidget extends StatelessWidget {
  const _AppBarDropdownWidget();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        alignment: Alignment.center,
        items: context.read<MainScreenCubit>().state.cities.map((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                  fontFamily: 'MarkPro',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColors.darkBlue),
            ),
          );
        }).toList(),
        onChanged: ((value) =>
            context.read<MainScreenCubit>().appBarOnChanged(value)),
        value: context.watch<MainScreenCubit>().state.selectedCity,
      ),
    );
  }
}
