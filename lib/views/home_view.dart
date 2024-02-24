import 'package:cyberwares_awareness/text_styles.dart';
import 'package:cyberwares_awareness/widgets/article_list_view.dart';
import 'package:cyberwares_awareness/widgets/categories_listview.dart';
import 'package:cyberwares_awareness/widgets/category_cyperware_listview.dart';
import 'package:cyberwares_awareness/widgets/custom_bottom_navigation_bar.dart';
import 'package:cyberwares_awareness/widgets/searh_text_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
 const  HomeView({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 56.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextField(),//search Bar
              const SizedBox(height: 10),
              const CategoriesListView(),//the text under scearch bar
              const SizedBox(height: 60),
              const CategoryCyperwaresListview(),//cards consist of types of attack
              const SizedBox(height: 18),
              Text(
                "Articles",
                style: TextStyles.font20Bold.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              const ArticleListView(),//articles how to avoid attack
            ]),
      ),
    );
  }
}
