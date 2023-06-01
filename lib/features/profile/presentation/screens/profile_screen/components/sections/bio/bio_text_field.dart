import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class BioTextField extends StatelessWidget {
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
