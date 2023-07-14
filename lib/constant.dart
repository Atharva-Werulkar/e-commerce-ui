import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int size, id;
  final double price;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Galaxy S23",
      price: 74999.00,
      size: 8,
      description: dummyText,
      image: "assets/images/s23.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Galaxy S23 Ultra",
      price: 154999.00,
      size: 10,
      description: dummyText,
      image: "assets/images/s23Ultra.png",
      color: const Color(0xFF989493)),
  Product(
    id: 6,
    title: "Galaxy S23+",
    price: 104999.00,
    size: 12,
    description: dummyText,
    image: "assets/images/s23+.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
      id: 4,
      title: "Galaxy S22",
      price: 66999.00,
      size: 11,
      description: dummyText,
      image: "assets/images/s22.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Galaxy S22+",
      price: 70999.00,
      size: 12,
      description: dummyText,
      image: "assets/images/s22+.png",
      color: const Color(0xFFFB7883)),
  Product(
      id: 2,
      title: "Galaxy S21 FE 5G",
      price: 49999.00,
      size: 12,
      description: dummyText,
      image: "assets/images/S21FE.png",
      color: const Color(0xFF3D82AE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

final List<String> categories = [
  'Shop',
  'Mobile',
  'TV & AV',
  'Laptops',
  'Monitors',
  'Displays',
  'Accessories',
  'SmartThings'
];
