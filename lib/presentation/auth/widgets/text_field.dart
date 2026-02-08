import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.onChanged,
    this.errorWidget,
    required this.hintText,
    this.isLoading = false,
    super.key,
  });

  final Function(String value) onChanged;
  final Widget? errorWidget;
  final String hintText;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      enabled: !isLoading,
      decoration: InputDecoration(
        hintText: hintText,
        error: errorWidget,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onTapOutside: ((event) {
        FocusScope.of(context).unfocus();
      }),
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText({required this.errorText, super.key});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Text(errorText, style: const TextStyle(color: Colors.redAccent));
  }
}
