import 'package:bookly/features/home/presentation/views/widgets/top_seller_books.dart';
import 'package:flutter/material.dart';

class TopSellerBooksList extends StatelessWidget {
  const TopSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const TopSellerBooks(),
      itemCount: 10,
    );
  }
}
