import 'package:flutter/material.dart';
import 'package:google_clone/widgets/language_text.dart';

class TranslationButton extends StatelessWidget {
  const TranslationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('Google offered in:'),
        SizedBox(width: 5),
        LanguageText(title: 'English'),
        SizedBox(width: 5),
        LanguageText(title: 'বাংলা'),
        SizedBox(width: 5),
        LanguageText(title: 'Urdu'),
        SizedBox(width: 5),
        LanguageText(title: 'मराठी'),
        SizedBox(width: 5),
        LanguageText(title: 'Punjabi'),
        SizedBox(width: 5),
        LanguageText(title: 'ગુજરાતી'),
        SizedBox(width: 5),
        LanguageText(title: 'ಕನ್ನಡ'),
        SizedBox(width: 5),
        LanguageText(title: 'മലയാളം'),
        SizedBox(width: 5),
        LanguageText(title: 'ਪੰਜਾਬੀ'),
      ],
    );
  }
}
