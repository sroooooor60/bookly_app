import 'package:bookly_app/Features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/result_search_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 20),
          const Text('Search Results', style: Styles.textStyle18),
          const SizedBox(height: 10),

          Expanded(child: ResultSearchListView()),
        ],
      ),
    );
  }
}
