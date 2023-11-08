import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "متجر المفتاح",
          style: GoogleFonts.mada(),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 103, 4),
        centerTitle: false,
        elevation: 0,
        actions: const [
          Icon(
            Icons.search,
            size: 24,
            color: Colors.black,
          ),
          Icon(Icons.notifications),
          Icon(Icons.ac_unit),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("قاط رجالي رسمي"),
            subtitle: Text("100,000 د.ع"),
            leading: Image.network(
              "https://plus.unsplash.com/premium_photo-1665657351427-efdfbf01fb81?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
          ListTile(
            title: Text("فستان نسائي"),
            subtitle: Text("75,000 د.ع"),
            leading: Image.network(
              "https://plus.unsplash.com/premium_photo-1665657351427-efdfbf01fb81?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
        ],
      ),
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$1,200",
      style: GoogleFonts.mada(
        fontSize: 40,
        color: const Color(0xFF474747),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
