import 'package:flutter/material.dart';

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
            // SearchButton(title: 'Google Search'),
            // SizedBox(width: 10),
            // SearchButton(title: 'I\'m feeling Lucky'),
          ],
        ),
      ],
    );
  }
}
