extension StringExtension on String {
  String toCapitalizeFirstLetter() {
    if (isEmpty) return '';
    final firstLetter = this[0].toUpperCase();
    if (length == 1) return firstLetter;
    final rest = substring(1);
    final completeStr = '$firstLetter$rest';
    return completeStr;
  }

  String removeHtmlTags() {
    final RegExp regExp = RegExp(
      r'<[^>]*>',
      multiLine: true,
      caseSensitive: false,
    );
    return replaceAll(regExp, '').trim();
  }

  String toCamelCase() {
    return replaceAllMapped(RegExp(r'([A-Z])'), (match) => ' ${match.group(0)}')
        .trim()
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  String camelToKebabCase() {
    final regex = RegExp(r'(?<!^)([A-Z])');
    final kebab = replaceAllMapped(regex, (match) => '-${match.group(0)}');
    return kebab.toLowerCase();
  }
}
