import 'package:flutter/material.dart';

class Product {
  final String image, title, color;
  final int price, size, id;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    image: "assets/bag_1.png",
    color: "Blue",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    image: "assets/bag_2.png",
    color: "Yellow",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    image: "assets/bag_3.png",
    color: "Black",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    image: "assets/bag_4.png",
    color: "Green",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    image: "assets/bag_5.png",
    color: "Red",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    image: "assets/bag_6.png",
    color: "Black",
  ),
];