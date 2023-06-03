import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flutter/material.dart';

/// Textfield to type bio in
class BioTextField extends StatelessWidget {
  /// Textfield to type bio in
  const BioTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomTextField(
        maxLines: 4,
        onChanged: (p0) {},
      ),
    );
  }
}
