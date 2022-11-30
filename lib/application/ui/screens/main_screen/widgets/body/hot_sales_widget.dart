import 'package:flutter/material.dart';
import 'package:online_market/application/ui/navigation/main_navigation.dart';
import 'package:online_market/application/ui/themes/app_theme.dart';

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 210,
        child: Row(
          children: const [
            SizedBox(width: 8),
            _HotSalesCardWidget(
              isNew: true,
              title: 'Iphone 12',
              subtitle: 'Súper. Mega. Rápido.',
              imageUrl:
                  "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both",
            ),
            SizedBox(width: 8),
            _HotSalesCardWidget(
              isNew: false,
              title: 'Samsung Galaxy A71',
              subtitle: 'Mega. Super. Rápido.',
              imageUrl:
                  "https://www.icover.ru/upload/iblock/15e/15eef100eff7ef2e055d9f12b18c7772.jpg",
            ),
            SizedBox(width: 8),
            _HotSalesCardWidget(
              isNew: true,
              title: 'Xiomi Mi 11',
              subtitle: 'Grand. Super. Class.',
              imageUrl:
                  "https://droider.ru/wp-content/uploads/2017/03/xiaomi-announces-mi5s-and-mi5s-plus.jpg",
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class _HotSalesCardWidget extends StatelessWidget {
  final bool isNew;
  final String title;
  final String subtitle;
  final String imageUrl;

  const _HotSalesCardWidget({
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            height: 210,
            width: MediaQuery.of(context).size.width - 15,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 23, 0, 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isNew
                    ? const _HotSalesIsNewWidget()
                    : const SizedBox(height: 27),
                const SizedBox(height: 18),
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'MarkPro',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'MarkPro',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 6),
                const _HotSalesButtonWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HotSalesIsNewWidget extends StatelessWidget {
  const _HotSalesIsNewWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: AppColors.orange,
            shape: BoxShape.circle,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(4, 7, 0, 0),
          child: Text(
            'New',
            style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class _HotSalesButtonWidget extends StatelessWidget {
  const _HotSalesButtonWidget();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      minWidth: 100,
      height: 23,
      child: const Text(
        'Buy now!',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          fontFamily: 'MarkPro',
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, Screens.productDetails),
    );
  }
}
