import 'package:flutter/material.dart';

class TopSellerContainer extends StatelessWidget {
  const TopSellerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 225,
          width: 150,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/the_jungle_book.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(2, 4),
              ),
            ],
          ),
        ),
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Book Name",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Author",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.star, color: Colors.yellow, size: 25),
            ),
          ],
        )
      ],
    );
  }
}
