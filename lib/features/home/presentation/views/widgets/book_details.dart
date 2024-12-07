import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 20,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            iconSize: 35,
            tooltip: "Cart",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "assets/the_jungle_book.png",
            width: 162,
            height: 243,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Book Name",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(
          height: 10,
        ),
        Text("Rating"),
        Text("Book Action")
      ],
    );
  }
}
