import 'package:flutter/material.dart';
import 'package:otel_dev/theme/color_styles.dart';

class TextFormField1 extends StatelessWidget {
  const TextFormField1({
    super.key,
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            height: 1.10,
            fontSize: 17,
          ),
      // keyboardType: keyboardType,
      // validator: validator,
      // controller: controller,
      // inputFormatters: inputFormatters,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.grey,
              fontSize: 17,
              height: 0.9,
            ),
        labelText: labelText,
        filled: true,
        fillColor: AppColors.grey1,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}