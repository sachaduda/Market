import 'package:flutter/material.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class CategoryInfoWidget extends StatelessWidget {
  final String mainText;
  final String buttonText;
  final VoidCallback onPressed;

  const CategoryInfoWidget(
      {super.key,
      required this.mainText,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 0, 33, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: const TextStyle(
              fontFamily: 'MarkPro',
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text(
              buttonText,
              style: const TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 15,
                color: AppColors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }
}
