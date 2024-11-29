import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/top_books_list_builder.dart';
import 'package:bookly/features/home/presentation/views/widgets/top_seller_list_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 16.0),
          Expanded(
            child: TopBooksListBuilder(),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Best Sellers",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: TopSellerListBuilder(),
          ),
        ],
      ),
    );
  }
}
