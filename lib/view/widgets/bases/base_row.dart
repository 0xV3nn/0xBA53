import 'package:flutter/material.dart';

import 'base_change_button.dart';
import 'number_field.dart';

class BaseRow extends StatelessWidget {
  final String baseButtonLabel;
  final dynamic Function() onButtonPressed;
  final TextEditingController controller;

  const BaseRow({
    super.key,
    required this.baseButtonLabel,
    required this.onButtonPressed,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              BaseChangeButton(
                label: baseButtonLabel, 
                onKeyPressed: onButtonPressed,
              ),
              NumberField(
                controller: controller,
              ) 
            ],
          );
  }
}