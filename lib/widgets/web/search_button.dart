import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String title;

  const SearchButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      child: Text(
        title,
        // style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
