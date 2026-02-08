import 'package:flutter/material.dart';
import 'package:tms_todo/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .max,
      mainAxisAlignment: .spaceBetween,
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            S.of(context).or,
            style: const TextStyle(fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
