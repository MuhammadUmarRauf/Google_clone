import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_button.dart';

class SearchsButtons extends StatelessWidget {
  const SearchsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(title: 'Google Search'),
          ],
        ),
      ],
    );
  }
}
