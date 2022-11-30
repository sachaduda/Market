import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_market/application/domain/api/app_api.dart';
import 'package:online_market/application/domain/hive/app_hive.dart';
import 'package:online_market/application/domain/models/catalog_model/catalog_model.dart';
import 'package:online_market/application/ui/screen_factory/screen_factory.dart';
import 'package:online_market/application/ui/screens/basket_screen/widgets/app_bar_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/app_bar_widget.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/body/body_widget.dart';

import 'package:online_market/application/ui/screens/main_screen/widgets/body/catalog_widget.dart';
import 'package:online_market/application/domain/models/category_model/category_model.dart';
import 'package:online_market/application/ui/screens/main_screen/widgets/body/hot_sales_widget.dart';

part 'main_screen_cubit.dart';
part 'main_screen_state.dart';
