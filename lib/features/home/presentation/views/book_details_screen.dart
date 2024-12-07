import 'package:bookly/features/home/presentation/views/widgets/book_details.dart';

import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BookCover(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const BookDetailsScreen());
}
