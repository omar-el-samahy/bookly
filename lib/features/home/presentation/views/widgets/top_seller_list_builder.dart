import 'package:bookly/features/home/presentation/views/widgets/top_seller_container.dart';
import 'package:flutter/material.dart';

class TopSellerListBuilder extends StatelessWidget {
  const TopSellerListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(5.0),
        child: TopSellerContainer(),
      ),
      itemCount: 3,

    );
  }
}
