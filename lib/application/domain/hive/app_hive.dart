import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_market/application/domain/models/basket_hive_model/basket_hive_model.dart';

class AppHive {
  void initHive() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(BasketHiveAdapter());
    }
  }

  void addInHive(BasketHiveModel product) async {
    var box = await Hive.openBox<BasketHiveModel>('basketBox');
    await box.add(product);
  }

  Future<List<BasketHiveModel>> readBoxHive() async {
    var box = await Hive.openBox<BasketHiveModel>('basketBox');
    return box.values.toList();
  }

  void clearHiveStorage() async {
    var box = await Hive.openBox<BasketHiveModel>('basketBox');
    box.clear();
  }

  Future<bool> hiveStorageIsEmpty() async {
    var box = await Hive.openBox<BasketHiveModel>('basketBox');
    if (box.isEmpty) {
      return true;
    }
    return false;
  }

  void removeFromStorage(int index) async {
    var box = await Hive.openBox<BasketHiveModel>('basketBox');
    await box.deleteAt(index);
  }
}
