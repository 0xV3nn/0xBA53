import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ModalSheetButton extends StatelessWidget {
  final String label;
  final dynamic Function()? onKeyPressed;

  const ModalSheetButton({
    super.key,
    required this.label,
    this.onKeyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(3), 
                ),
                onPressed: onKeyPressed,
                child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.black, 
                      fontSize: 18
                    ),
                  ),
              ),
            );
  }
}