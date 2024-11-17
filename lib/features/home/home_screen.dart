import 'package:bookly/features/home/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/views/widgets/top_books_list_builder.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
        children: [
          CustomAppBar(),
          SizedBox(height: 16.0), // Spacing between widgets
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
            child: Text(
              "Top Books",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0), // Spacing before the list
          Expanded(
            child: TopBooksListBuilder(), // Expand list to take available space
          ),
        ],
      ),
    );
  }
}
