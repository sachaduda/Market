import 'package:flutter/material.dart';

enum CategoryList { phones, computer, health, books, office }

class CategoryModel {
  final String name;
  final IconData icon;

  CategoryModel({
    required this.name,
    required this.icon,
  });
}

final categories = [
  CategoryModel(
    name: 'Phones',
    icon: Icons.phone_android_outlined,
  ),
  CategoryModel(
    name: 'Computers',
    icon: Icons.computer_outlined,
  ),
  CategoryModel(
    name: 'Health',
    icon: Icons.heart_broken,
  ),
  CategoryModel(
    name: 'Books',
    icon: Icons.book_online_outlined,
  ),
  CategoryModel(
    name: 'Office',
    icon: Icons.chair,
  ),
];
