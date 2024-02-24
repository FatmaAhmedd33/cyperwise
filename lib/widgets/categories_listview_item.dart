import 'package:cyberwares_awareness/text_styles.dart';
import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem(
      {super.key, required this.category, required this.index});
  final String category;
  final int index;
  final selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
            height: 31,
            decoration: BoxDecoration(
              color: const Color(0xff161616),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xff565656),
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                category,
                style: TextStyles.font16Regular
                    .copyWith(color: const Color(0xffB8B8B8)),
              ),
            ))),
      ),
    );
  }
}
