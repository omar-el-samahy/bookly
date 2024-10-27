import 'package:bookly/features/home/views/widgets/top_books_container.dart';
import 'package:flutter/material.dart';

class TopBooksListBuilder extends StatelessWidget {
  const TopBooksListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return const TopBooksContainer();
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal);
  }
}
