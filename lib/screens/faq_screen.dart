import 'package:app/providers/general/faq_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FaqScreen extends ConsumerWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final faqs = ref.watch(faqProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Frequently Asked Questions')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: List.generate(faqs.length, (index) {
            final faq = faqs[index];
            return ExpansionTile(
              title: Text(faq.question),

              childrenPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              children: [Text(faq.answer, style: textTheme.bodyMedium)],
            );
          }),
        ),
      ),
    );
  }
}
