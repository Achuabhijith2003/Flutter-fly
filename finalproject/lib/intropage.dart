import 'package:finalproject/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
            child: Image.asset(
                "assets/Casual Shoes Hd Transparent, Line Drawing Casual Shoes Illustration, Casual Shoes, Shoe Rope, Sneakers PNG Image For Free Download.jpeg"),
          ),
          Text(
            "Find the perfect shoe for every occasion.",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif().copyWith(
              fontSize: 32, // Adjust font size as needed
              fontWeight: FontWeight.bold, // Adjust font weight as needed
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Find your sole mate"),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const homepage();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(25)),
              child: const Padding(
                padding: EdgeInsets.all(28.0),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
