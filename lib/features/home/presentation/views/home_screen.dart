import 'package:bookly/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/top_seller_books_list.dart';
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
          SizedBox(height: 200, child: TopBooksListBuilder()),
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Best Sellers",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: TopSellerBooksList(),
          ),
        ],
      ),
    );
  }
}
