import 'package:flutter/material.dart';

class FeaturedBooks extends StatelessWidget {
  const FeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 9,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/the_jungle_book.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
