import 'package:flutter/material.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 0.5,
          child: const ColoredBox(color: Colors.white),
        ),
        const _TotalPriceRowWidget(
          title: 'Total',
          text: '6000',
        ),
        const _TotalPriceRowWidget(
          title: 'Delivery',
          text: 'Free',
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 0.5,
          child: const ColoredBox(color: Colors.white),
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}

class _TotalPriceRowWidget extends StatelessWidget {
  final String title;
  final String text;
  const _TotalPriceRowWidget({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white54,
              fontFamily: 'MarkPro',
              fontSize: 15,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'MarkPro',
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
