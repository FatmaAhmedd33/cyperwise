import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff171717),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xffB8B8B8),
      currentIndex: 0,
      onTap: (value) {},
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svgs/home.svg",
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/svgs/category.svg"),
          label: "Category",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svgs/greyheart.svg",
          ),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svgs/person.svg",
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
