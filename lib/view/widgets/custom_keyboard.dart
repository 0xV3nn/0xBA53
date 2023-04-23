import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;
  const CustomKeyboard({
    super.key,
    required this.onKeyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CustomButton(label: '1', onKeyPressed: onKeyPressed),
              CustomButton(label: '2', onKeyPressed: onKeyPressed),
              CustomButton(label: '3', onKeyPressed: onKeyPressed),
            ],
          ),
          Row(
            children: [
              CustomButton(label: '4', onKeyPressed: onKeyPressed),
              CustomButton(label: '5', onKeyPressed: onKeyPressed),
              CustomButton(label: '6', onKeyPressed: onKeyPressed),
            ],
          ),
          Row(
            children: [
              CustomButton(label: '7', onKeyPressed: onKeyPressed),
              CustomButton(label: '8', onKeyPressed: onKeyPressed),
              CustomButton(label: '9', onKeyPressed: onKeyPressed),
            ],
          ),
          Row(
            children: [
              CustomButton(label: '0', onKeyPressed: onKeyPressed),
              CustomButton(label: '+', onKeyPressed: onKeyPressed),
              CustomButton(label: '-', onKeyPressed: onKeyPressed),
            ],
          ),
          Row(
            children: [
              CustomButton(label: '*', onKeyPressed: onKeyPressed),
              CustomButton(label: '/', onKeyPressed: onKeyPressed),
              CustomButton(label: '=', onKeyPressed: onKeyPressed),
            ],
          ),
          Row(children: [
            CustomButton(label: 'AC', onKeyPressed: onKeyPressed),
            CustomButton(label: 'X', onKeyPressed: onKeyPressed)
            ],
          )
          // Add more rows for additional buttons as needed
        ],
      ),
    );
  }
}

