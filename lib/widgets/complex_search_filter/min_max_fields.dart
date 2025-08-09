import 'package:app/utils/form_validation.dart';
import 'package:app/widgets/complex_search_filter/heading_text.dart';
import 'package:flutter/material.dart';

import 'number_field.dart';

class MinMaxFields extends StatefulWidget {
  final String label;
  final String fieldKey;
  final int allowedMin;
  final int allowedMax;
  final int? initialMin;
  final int? initialMax;
  final void Function(Map<String, dynamic> filter) onUpdateSearchFilter;
  const MinMaxFields({
    super.key,
    required this.label,
    required this.fieldKey,
    required this.onUpdateSearchFilter,
    this.allowedMin = 0,
    this.allowedMax = 100,
    this.initialMin,
    this.initialMax,
  });

  @override
  State<MinMaxFields> createState() => _MinMaxFieldsState();
}

class _MinMaxFieldsState extends State<MinMaxFields> {
  String _min = '';
  String _max = '';
  @override
  void initState() {
    super.initState();
    _min = widget.initialMin?.toString() ?? '';
    _max = widget.initialMax?.toString() ?? '';
  }

  void _handleMinMaxChange(String fieldKey, int? value, bool isMin) {
    final fieldName = '${isMin ? 'min' : 'max'}$fieldKey';
    final mappedFilter = {fieldName: value};
    widget.onUpdateSearchFilter(mappedFilter);
    setState(() {});
  }

  String? _handleValidation(String? val) {
    final basicValidation = FormValidation.validateIntField(
      value: val,
      min: widget.allowedMin,
      max: widget.allowedMax,
    );
    if (basicValidation != null) return basicValidation;
    final crossFieldValidation = FormValidation.validateCrossFieldMinMax(
      min: int.tryParse(_min),
      max: int.tryParse(_max),
    );
    return crossFieldValidation;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HeadingText(widget.label),
        SizedBox(
          // height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: NumberField(
                  initialValue: widget.initialMin,
                  hintText: 'Min',
                  onChanged: (val) {
                    _min = val;
                    _handleMinMaxChange(
                      widget.fieldKey,
                      int.tryParse(val),
                      true,
                    );
                  },
                  validator: _handleValidation,
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: NumberField(
                  initialValue: widget.initialMax,
                  hintText: 'Max',
                  onChanged: (val) {
                    _max = val;
                    _handleMinMaxChange(
                      widget.fieldKey,
                      int.tryParse(val),
                      false,
                    );
                  },
                  validator: _handleValidation,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
