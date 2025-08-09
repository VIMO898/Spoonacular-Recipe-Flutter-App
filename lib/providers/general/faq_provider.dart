import 'package:app/models/faq_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final faqProvider = Provider<List<FaqModel>>((ref) => [
      FaqModel(
          question: 'Is Spoonacular free to use?',
          answer:
              'Yes, it is completely free and accessible to all who wish to explore new recipes and ideas in the kitchen.'),
      FaqModel(
          question: 'Do I need to create an account to use the app?',
          answer:
              'No account is required. The experience is designed to be immediate, intuitive, and unobtrusive.'),
      FaqModel(
          question: 'Where do the recipes come from?',
          answer:
              'Our recipe library is powered by Spoonacular, a trusted provider of culinary data and insights.'),
      FaqModel(
          question: 'Can I save recipes for later?',
          answer:
              'Yes, you can build your own watchlist of favorite dishes and download them to view offline at your convenience.'),
      FaqModel(
          question: 'Is there a search function?',
          answer:
              'Absolutely. You can search by keyword, ingredient, or category to find recipes that match your taste or curiosity.'),
      FaqModel(
          question: 'Does the app work without internet?',
          answer:
              'Yes, any recipe you’ve downloaded will be available offline. Live search and browsing, however, require an internet connection.'),
      FaqModel(
          question: ' Is this app available for both iOS and Android?',
          answer:
              "Yes, just search 'Spoonacular Recipe App' on Play Store or App Store to find & download our app."),
      FaqModel(
          question: 'How can I offer feedback or report an issue?',
          answer:
              'We welcome all thoughts and insights. Please contact us at spoonacular@gmail.com, and we’ll be happy to assist.'),
    ]);
