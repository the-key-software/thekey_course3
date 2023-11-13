import 'package:flutter/material.dart';
import 'package:thekey_course3/home_screen.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("معلومات المنتج"),
          // centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
