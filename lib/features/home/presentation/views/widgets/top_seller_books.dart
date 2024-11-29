import 'package:flutter/material.dart';

class TopSellerBooks extends StatelessWidget {
  const TopSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/the_jungle_book.png",
                width: 70,
                height: 105,
              ),
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      "Book Name",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Author",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Price",
                              style: TextStyle(fontSize: 20),
                            )),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 25),
                        ),
                        Text("Rating"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text("Downloads"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
