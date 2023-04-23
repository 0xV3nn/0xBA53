import 'dart:io';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final label;
  final Icon? icon;
  final Function(String) onKeyPressed;

  const CustomButton({
    super.key,
    this.label,
    this.icon,
    required this.onKeyPressed
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox( 
      width: 0.25 * screenWidth,   
      height: 0.11 * screenHeight, 
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
          foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
        child: icon ?? Text(
          label, 
          style: const TextStyle(
            fontSize: 24
          ), 
        ), 
        onPressed: () {
          onKeyPressed(label);
        },
      ),
    );
  }
}