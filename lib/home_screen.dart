import 'package:flutter/material.dart';

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
              print("Notifications");
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("قاط رجالي رسمي"),
            subtitle: const Text("75,000 د.ع"),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://thekeysoftware.com/courses/flutter1/clothes/man-1.png",
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
          ListTile(
            title: const Text("سترة رجالي رسمية"),
            subtitle: const Text("55,000 د.ع"),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://thekeysoftware.com/courses/flutter1/clothes/man-2.png",
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
          ListTile(
            title: const Text("قاط اسود"),
            subtitle: const Text("100,000 د.ع"),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://thekeysoftware.com/courses/flutter1/clothes/man-3.png",
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
