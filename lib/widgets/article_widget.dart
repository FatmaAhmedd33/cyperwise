import 'package:cyberwares_awareness/models/articles_model.dart';
import 'package:cyberwares_awareness/models/detalis_model.dart';
import 'package:cyberwares_awareness/text_styles.dart';
import 'package:cyberwares_awareness/views/details_view_articles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.a1, required this.d1});
  final ArticalModel a1;
  final DetailsModel d1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Constrain the height of the container
      height: 151,
      width: 400,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 161,
              width: 200,
              // Apply border radius to the container
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xff161616),
              ),
              // Row to contain children horizontally
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First child: SVG Image
                  Center(
                    child: SvgPicture.asset(
                      a1.image,
                      height: 100,
                      width: 90,
                    ),
                  ),
                  // Second child: Container for text content
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            a1.tileView,
                            style: TextStyles.font18Bold
                                .copyWith(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return DetailsViewArticles(
                                  d1: d1,
                                );
                              })));
                            },
                            child: Text(
                              a1.smallDescription,
                              maxLines: 3,
                              style: TextStyles.font12Regular.copyWith(
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Text(
                            "By our team  |  21 feb 2024",
                            style: TextStyles.font12Regular
                                .copyWith(color: const Color(0xff787878)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
