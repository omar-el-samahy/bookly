import 'package:bookly/features/home/presentation/views/widgets/featured_books.dart';
import 'package:flutter/material.dart';

class TopBooksListBuilder extends StatelessWidget {
  const TopBooksListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(5.0),
        child: FeaturedBooks(),
      ),
      itemCount: 10,
      scrollDirection: Axis.horizontal,
    );
  }
}