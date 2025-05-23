import 'package:bookly_app/core/widgets/custom_book_botton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookBotton(
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            text: '19.99 \$',
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomBookBotton(
            backgroundColor: const Color.fromARGB(255, 233, 52, 61),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            text: 'Free Preview',
            textColor: Colors.white,
            textSize: 16,
          ),
        ),
      ],
    );
  }
}
