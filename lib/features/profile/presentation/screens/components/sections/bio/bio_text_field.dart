import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class BioTextField extends StatelessWidget {
  const BioTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      maxLines: null,
      charLimit: 70,
      onChanged: (p0) {},
    );
  }
}
