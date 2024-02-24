import 'package:cyberwares_awareness/models/category_cyperware_model.dart';
import 'package:cyberwares_awareness/models/detalis_view_cards_model.dart';
import 'package:cyberwares_awareness/text_styles.dart';
import 'package:cyberwares_awareness/views/detalis_view_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCyperwaresListviewItem extends StatelessWidget {
  const CategoryCyperwaresListviewItem({
    super.key,
    required this.category,
    required this.c1
  });
  final CategoryCyperWareModel category;
  final CardsModel c1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 236,
      width: 185,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Container
          Container(
            height: 236,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: category.backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      category.title,
                      style: TextStyles.font18Bold
                          .copyWith(color: const Color(0xff000000)),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      style: TextStyles.font12Regular.copyWith(
                        color: const Color(0xff353535),
                      ),
                    )
                  ]),
            ),
          ),
          // Circle Positioned
          Positioned(
            bottom: 180, // Half the height of the circle (138.5 / 2)
            right: -20, // Half the width of the circle (138.5 / 2)
            child: Container(
                height: 100.5,
                width: 100.5,
                clipBehavior: Clip.none,
                decoration: const BoxDecoration(
                  // color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  category.image,
                  width: 90,
                  height: 90,
                  //fit: BoxFit.cover,
                )),
          ),
          // Svg Positioned
          Positioned(
            bottom: -20, // Half the height of the circle (39.5 / 2)
            left: 0, // Positioned at the left edge
            right: 0, // Positioned at the right edge
            child: Container(
              height: 39.5,
              width: 39.5,
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: category.color,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return  DetalisViewCards(
                      c1: c1,
                    );
                  })));
                },
                child: Center(
                  child: SvgPicture.asset("assets/images/svgs/Vector.svg"),
                ),
              ),
            ),
          ),
          // Text Positioned
        ],
      ),
    );
  }
}
