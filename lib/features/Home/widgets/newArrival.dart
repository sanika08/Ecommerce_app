// NewArrival.dart
import 'package:ecommerceapp/features/Home/detailScreen.dart';
import 'package:ecommerceapp/features/Home/model/Product.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: demo_product[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.3,
        padding: const EdgeInsets.all(16 / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(height: 16 / 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 16 / 4),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
