import 'package:flutter/material.dart';
import 'package:thekey_course3/home_screen.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  final int index;

  const ProductScreen({
    super.key,
    required this.product,
    required this.index,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("معلومات المنتج ${widget.index + 1}"),
          // centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              icon: Icon(
                like ? Icons.favorite : Icons.favorite_outline,
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: AspectRatio(
                aspectRatio: 4 / 5,
                child: Image.network(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              "${widget.product.price} د.ع",
              style: const TextStyle(fontSize: 24),
            ),
            Text(widget.product.description),
            const Text(
              "القياسات",
              style: TextStyle(fontSize: 24),
            ),
            SizesListWidget(sizes: widget.product.sizes),
            const Text(
              "الالوان",
              style: TextStyle(fontSize: 24),
            ),
            ColorsListWidget(colors: widget.product.colors),
            FilledButton(
              onPressed: () {},
              child: const Text("اضف الى السلة"),
            )
          ],
        ),
      ),
    );
  }
}

class SizesListWidget extends StatelessWidget {
  final List<int> sizes;

  const SizesListWidget({
    super.key,
    required this.sizes,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (context, index) {
          final size = sizes[index];

          return Container(
            padding: const EdgeInsets.all(14),
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Text(
              "$size",
              style: TextStyle(
                fontSize: 16,
                color: colorScheme.onSecondaryContainer,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ColorsListWidget extends StatelessWidget {
  final List<Color> colors;

  const ColorsListWidget({
    super.key,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final color = colors[index];
          return Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
