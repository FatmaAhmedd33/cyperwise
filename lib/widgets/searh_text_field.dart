import 'package:cyberwares_awareness/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {//to make the shape of searchBar
    return SizedBox(
      height: 48,
      child: TextField(
          style: TextStyles.font16Regular.copyWith(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff161616),
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            border: outlineBorder(),
            contentPadding: const EdgeInsets.all(16.0),
            disabledBorder: outlineBorder(),
            errorBorder: outlineBorder(),
            focusedErrorBorder: outlineBorder(),
            hintText: '  Search for Cyberwares',
            hintStyle: TextStyles.font16Regular
                .copyWith(color: const Color(0xffB8B8B8)),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SvgPicture.asset(
                'assets/images/svgs/searchicon.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          )),
    );
  }
}

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
  );
}
