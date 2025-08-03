import 'package:flutter/material.dart';

class CatgeoryCard extends StatelessWidget {
  const CatgeoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((states) => Colors.grey),
      ),

      child: Row(
        children: [
          Text(
            "Hello World",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
