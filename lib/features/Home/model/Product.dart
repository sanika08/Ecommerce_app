import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "images/watch.png",
    title: "Watch",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "images/bag.png",
    title: "Bag",
    price: 149,
  ),
  Product(
    image: "images/sandal.png",
    title: "Sandal",
    price: 199,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "images/kurta.png",
    title: "Kurta",
    price: 299,
    bgColor: const Color(0xFFEEEEED),
  ),
];
