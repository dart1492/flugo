// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/core/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// Custom text field that allows user to obscure text
class CustomPasswordField extends StatefulWidget {
  final void Function(String)? onChanged;

  final String? labelText;

  final Icon? trailingIcon;

  final void Function()? onTap;

  final int? maxLines;

  /// Custom text field that allows user to obscure text
  const CustomPasswordField({
    Key? key,
    this.onChanged,
    this.labelText,
    this.trailingIcon,
    this.onTap,
    this.maxLines,
  }) : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isObscured = false;

  void toggleObscureText() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      maxLines: widget.maxLines,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      labelText: widget.labelText,
      isObscured: isObscured,
      trailingIcon: GestureDetector(
        onTap: () => toggleObscureText(),
        child: Icon(
          !isObscured ? FeatherIcons.eye : FeatherIcons.eyeOff,
        ),
      ),
    );
  }
}
