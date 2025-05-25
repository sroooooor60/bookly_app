import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: FeaturedListViewItem(),
        ),
        SizedBox(height: 30),

        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              //ممكن نعمل السطر ده بدل الأوباستي
              // color: Colors.white.withValues(alpha: .7),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 20),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 30),
        BookAction(),
      ],
    );
  }
}
