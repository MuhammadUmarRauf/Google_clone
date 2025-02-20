import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/widgets/translation_button.dart';
import 'package:google_clone/widgets/web/search_button.dart';
import 'package:google_clone/widgets/web/web_footer.dart';
import '../../colors.dart';
import 'package:google_clone/widgets/search.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              height: 50,
              color: const Color(0xff1A73EB),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Centered Logo and Search Box
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Logo
                SvgPicture.asset(
                  'assets/images/google-logo.svg', // Ensure the correct path
                  height: 100, // Adjust as needed
                ),
                const SizedBox(height: 30),
                // Search Bar
                const Search(),
                const SizedBox(height: 30),
                // Search Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SearchButton(title: 'Google Search'),
                    const SizedBox(width: 20),
                    SearchButton(title: 'I\'m Feeling Lucky'),
                  ],
                ),
                const SizedBox(height: 20),
                // Translation Button
                const TranslationButton(),
              ],
            ),
          ),
          // Footer at the bottom
          const WebFooter(),
        ],
      ),
    );
  }
}
