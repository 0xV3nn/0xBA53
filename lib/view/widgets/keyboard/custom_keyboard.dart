import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;
  final String type;

  const CustomKeyboard({
    super.key,
    required this.onKeyPressed,
    required this.type,
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
                  CustomButton(label: type == 'HEX' ? 'F' : '', 
                    onKeyPressed: onKeyPressed
                  ),
                  CustomButton(label: type == 'HEX' ? 'E' : '', 
                    onKeyPressed: onKeyPressed
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: type == "BIN" ? "" : "7", onKeyPressed: onKeyPressed),
                  CustomButton(label: type == 'OCT' || type == "BIN" ? '' : '8', onKeyPressed: onKeyPressed),
                  CustomButton(label: type == 'OCT' || type == "BIN" ? '' : '9', onKeyPressed: onKeyPressed),
                  CustomButton(label: type == 'HEX' ? 'D' : '', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: type == "BIN" ? "" : "4", onKeyPressed: onKeyPressed),
                  CustomButton(label: type == "BIN" ? "" : "5", onKeyPressed: onKeyPressed),
                  CustomButton(label: type == "BIN" ? "" : "6", onKeyPressed: onKeyPressed),
                  CustomButton(label: type == 'HEX' ? 'C' : '', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '1', onKeyPressed: onKeyPressed),
                  CustomButton(label: type == "BIN" ? "" : "2", onKeyPressed: onKeyPressed), 
                  CustomButton(label: type == "BIN" ? "" : "3", onKeyPressed: onKeyPressed),
                  CustomButton(label: type == 'HEX' ? 'B' : '', onKeyPressed: onKeyPressed),
                ],
              ),
              Row(
                children: [
                  CustomButton(label: '', onKeyPressed: onKeyPressed),
                  CustomButton(label: '0', onKeyPressed: onKeyPressed),
                  CustomButton(label: '', onKeyPressed: onKeyPressed),  
                  CustomButton(label: type == 'HEX' ? 'A' : '', onKeyPressed: onKeyPressed),
                ],
              ), 
            ],
    );
  }
}

