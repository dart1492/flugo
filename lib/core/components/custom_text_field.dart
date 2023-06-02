// ignore_for_file: public_member_api_docs
import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/styles/text_style.dart';
import 'package:flutter/material.dart';

/// Custom textfield with predefined decoration
class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;

  final String? labelText;

  final Widget? trailingIcon;

  final bool? isObscured;

  final void Function()? onTap;

  final Widget? leading;

  final EdgeInsets? contentPadding;

  final int? maxLines;

  final TextEditingController? controller;

  final int? charLimit;

  /// Custom textfield with predefined decoration
  const CustomTextField({
    super.key,
    this.onChanged,
    this.labelText,
    this.trailingIcon,
    this.isObscured,
    this.onTap,
    this.leading,
    this.contentPadding,
    this.controller,
    this.maxLines,
    this.charLimit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: charLimit,
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      obscureText: isObscured ?? false,
      onChanged: onChanged,
      cursorColor: AppColors.highlightedViolet,
      style: josefin.s20.withColor(AppColors.plainWhite),
      decoration: InputDecoration(
        counterStyle: josefin.s16.withColor(
          AppColors.darkerGrey,
        ),
        prefixIcon: leading,
        contentPadding:
            contentPadding ?? const EdgeInsets.fromLTRB(10, 10, 0, 22),
        label: Container(
          padding: const EdgeInsets.only(top: 3),
          child: Text(labelText ?? ""),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: trailingIcon,
        labelStyle: josefin.s20.withColor(AppColors.grey),
        fillColor: AppColors.lightBlue,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.highlightedViolet),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.darkerGrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColors.highlightedRed),
        ),
        errorStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.highlightedRed,
            ),
      ),
    );
  }
}
