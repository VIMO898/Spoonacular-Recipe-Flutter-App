class FormValidation {
  static String? validateIntField({
    required String? value,
    int? min,
    int? max,
  }) {
    final parsed = int.tryParse(value ?? '');
    if (parsed == null) return null;

    if (min != null && parsed < min) {
      return 'value must be at least $min';
    }

    if (max != null && parsed > max) {
      return 'value must be at most $max';
    }

    return null; // valid
  }

  static String? validateCrossFieldMinMax({
    required int? min,
    required int? max,
  }) {
    if (min == null || max == null) return null;

    if (min > max) {
      return 'min value greater than max value';
    }

    return null;
  }
}
