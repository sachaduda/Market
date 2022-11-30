import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/application/domain/blocs/main_screen_cubit/cubit.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/app_bar_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/bottom_navigation_bar_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/app_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: ((BuildContext context, MainScreenState state) {
      final catalog = state.catalogModel;
      if (catalog == null) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      return Scaffold(
        appBar: context.read<MainScreenCubit>().getAppBar(),
        body: state.bodyWidgets.elementAt(state.selectedPageIndex),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      );
    }));
  }
}
