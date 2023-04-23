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
    return Column(
            children: [
              Row(
                children: [
                  CustomButton(
                    label: 'AC',
                    icon: Icon(
                      Icons.clear, 
                      color: Colors.orange[900] 
                    ),
                    onKeyPressed: onKeyPressed
                  ),
                  CustomButton(
                    label: "X", 
                    icon: Icon(
                      Icons.backspace_outlined, 
                      color: Colors.orange[900]
                    ), 
                    onKeyPressed: onKeyPressed),
                  CustomButton(label: 'F', onKeyPressed: onKeyPressed),
                  CustomButton(label: 'E', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '7', onKeyPressed: onKeyPressed),
                  CustomButton(label: '8', onKeyPressed: onKeyPressed),
                  CustomButton(label: '9', onKeyPressed: onKeyPressed),
                  CustomButton(label: 'D', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '4', onKeyPressed: onKeyPressed),
                  CustomButton(label: '5', onKeyPressed: onKeyPressed),
                  CustomButton(label: '6', onKeyPressed: onKeyPressed),
                  CustomButton(label: 'C', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '1', onKeyPressed: onKeyPressed),
                  CustomButton(label: '2', onKeyPressed: onKeyPressed),
                  CustomButton(label: '3', onKeyPressed: onKeyPressed),
                  CustomButton(label: 'B', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '', onKeyPressed: onKeyPressed),
                  CustomButton(label: '0', onKeyPressed: onKeyPressed),
                  CustomButton(label: '.', onKeyPressed: onKeyPressed), 
                  CustomButton(label: 'A', onKeyPressed: onKeyPressed),
                ],
              ), 
            ],
    );
  }
}

