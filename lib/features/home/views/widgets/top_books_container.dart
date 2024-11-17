import 'package:flutter/material.dart';

class TopBooksContainer extends StatelessWidget {
  const TopBooksContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 150,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/the_jungle_book.png"),
          fit: BoxFit.cover, // Ensures the image covers the container
        ),
        borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(2, 4), // Subtle shadow
          ),
        ],
      ),
    );
  }
}
