import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 24),
        const SizedBox(width: 6.3),
        const Text('4.8', style: Styles.textStyle14),
        const SizedBox(width: 5),
        Text('(246)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
