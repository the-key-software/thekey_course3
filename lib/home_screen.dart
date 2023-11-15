import 'package:flutter/material.dart';
import 'package:thekey_course3/cart_screen.dart';
import 'package:thekey_course3/product_screen.dart';

import 'notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("متجر المفتاح"),
        actions: [
          IconButton(
            onPressed: () {
              print("Search");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationsScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const CartScreen();
              },
            ),
          );
        },
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ListTile(
            title: Text(product.name),
            subtitle: Text("${product.price} د.ع"),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProductScreen(
                      product: product,
                      index: index,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final int price;
  final String image;
  final List<int> sizes;
  final List<Color> colors;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.sizes,
    required this.colors,
    required this.description,
  });
}

final List<Product> products = [
  const Product(
    name: "قاط رجالي رسمي",
    price: 75000,
    image: "https://thekeysoftware.com/courses/flutter1/clothes/man-1.png",
    description:
        "قاط رجالي رسمي مكون من 3 قطع, ابيض, ونيلي و احمر وكذلك جوزي وياها رباط هدية",
    sizes: [40, 42, 44, 46],
    colors: [
      Colors.white,
      Colors.black,
      Colors.red,
      Colors.green,
      Color.fromARGB(255, 251, 172, 15),
    ],
  ),
  const Product(
    name: "سترة رجالي رسمية",
    price: 55000,
    image: "https://thekeysoftware.com/courses/flutter1/clothes/man-2.png",
    description: "",
    sizes: [40, 42, 44, 46],
    colors: [],
  ),
  const Product(
    name: "قاط اسود",
    price: 100000,
    image: "https://thekeysoftware.com/courses/flutter1/clothes/man-3.png",
    description: "",
    sizes: [55],
    colors: [],
  ),
  const Product(
    name: "ملابس نسائية",
    price: 25000,
    image: "https://thekeysoftware.com/courses/flutter1/clothes/woman-1.png",
    description: "",
    sizes: [],
    colors: [],
  ),
];
