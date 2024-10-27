import 'package:flutter/material.dart';

class TopBooksContainer extends StatefulWidget {
  const TopBooksContainer({super.key});

  @override
  State<TopBooksContainer> createState() => _TopBooksContainerState();
}

class _TopBooksContainerState extends State<TopBooksContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      width: 150,
      child: Container(
        height: 225,
        width: 150,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/the_jungle_book.png"),
          ),
        ),
      ),
    );
  }
}
