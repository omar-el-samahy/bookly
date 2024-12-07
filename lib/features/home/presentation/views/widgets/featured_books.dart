import 'package:flutter/material.dart';

class FeaturedBooks extends StatelessWidget {
  const FeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.grey,
      child: Image.network(
        "assets/the_jungle_book.png",
        width: 150,
        height: 224,
      ),
    );
  }
}
