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
        children: [CustomAppBar(), TopBooksListBuilder()],
      ),
    );
  }
}
