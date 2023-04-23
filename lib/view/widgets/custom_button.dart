import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function(String) onKeyPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.onKeyPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        label,
        style: const TextStyle(fontSize: 24),
      ),
      onPressed: () {
        onKeyPressed(label);
      },
    );
  }
}