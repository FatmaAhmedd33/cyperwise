import 'package:cyberwares_awareness/widgets/categories_listview_item.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "ALL",
      "Malware",
      "Phishing",
      "SQL Injection Attack",
      "Cross-Site Scripting (XSS)",
      "Denial-of-Service (DoS)",
      "Session Hijacking",
      "Credential Reuse",
    ];

    return SizedBox(
      height: 31,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoriesListViewItem(
                category: categories[index], index: index);
          }),
    );
  }
}
