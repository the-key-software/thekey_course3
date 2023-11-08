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
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "1",
                style: GoogleFonts.mada(fontSize: 24),
              ),
              Column(
                children: [
                  Text(
                    "قاط رجالي رسمي",
                    style: GoogleFonts.mada(fontSize: 24),
                  ),
                  Text(
                    "100,000 د.ع",
                    style: GoogleFonts.mada(fontSize: 18),
                  ),
                ],
              )
            ],
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
