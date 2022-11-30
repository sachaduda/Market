import 'package:flutter/material.dart';

class CartButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CartButtonWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        height: 55,
        color: const Color.fromRGBO(255, 110, 78, 1),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
    ;
  }
}
