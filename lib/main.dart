import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "The Key Store",
            style: GoogleFonts.mada(),
          ),
          backgroundColor: Colors.red,
          centerTitle: false,
          elevation: 20,
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
        body: Center(
          child: Text(
            "\$1,200",
            style: GoogleFonts.mada(
              fontSize: 40,
              color: const Color(0xFF474747),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
