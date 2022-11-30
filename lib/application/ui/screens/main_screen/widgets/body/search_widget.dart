import 'package:flutter/material.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class CatalogSearchWidget extends StatelessWidget {
  const CatalogSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = AppColors.orange;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
            width: 300,
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Search',
                labelStyle: TextStyle(color: orangeColor),
                prefixIcon: Icon(
                  Icons.search,
                  color: orangeColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: orangeColor,
                  ),
                ),
              ),
              style: TextStyle(fontSize: 12, fontFamily: 'MarkPro'),
            )),
        const SizedBox(width: 11),
        MaterialButton(
          shape: const CircleBorder(),
          height: 34,
          minWidth: 34,
          color: orangeColor,
          child: const Icon(
            Icons.qr_code,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
