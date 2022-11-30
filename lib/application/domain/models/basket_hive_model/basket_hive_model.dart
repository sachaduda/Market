import 'package:hive/hive.dart';

class BasketHiveModel {
  final String title;
  final int price;
  final String image;
  final String color;
  final String memory;

  BasketHiveModel(
      {required this.title,
      required this.price,
      required this.image,
      required this.color,
      required this.memory});
}

class BasketHiveAdapter extends TypeAdapter<BasketHiveModel> {
  @override
  final typeId = 0;

  @override
  BasketHiveModel read(BinaryReader reader) {
    final title = reader.readString();
    final int price = reader.readInt();
    final String image = reader.readString();
    final String color = reader.readString();
    final String memory = reader.readString();
    return BasketHiveModel(
        title: title, price: price, image: image, color: color, memory: memory);
  }

  @override
  void write(BinaryWriter writer, BasketHiveModel obj) {
    writer.writeString(obj.title);
    writer.writeInt(obj.price);
    writer.writeString(obj.image);
    writer.writeString(obj.color);
    writer.writeString(obj.memory);
  }
}
