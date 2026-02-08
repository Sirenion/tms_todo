import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({this.isLoading = false, required this.callback, this.label = '', super.key});

  final bool isLoading;
  final String label;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: !isLoading ? callback : null,
        child: switch (isLoading) {
          true => Transform.scale(scale: 0.75, child: const CircularProgressIndicator()),
          false => Text(label),
        },
      ),
    );
  }
}
