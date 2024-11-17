import 'package:bookly/features/home/views/widgets/top_books_container.dart';
import 'package:flutter/material.dart';

class TopBooksListBuilder extends StatelessWidget {
  final int itemCount;

  const TopBooksListBuilder({
    Key? key,
    this.itemCount = 3, // Default item count
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding around the list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: index == itemCount - 1 ? 0 : 8.0, // Add space between items except after the last one
            ),
            child: const TopBooksContainer(),
          );
        },
      ),
    );
  }
}
