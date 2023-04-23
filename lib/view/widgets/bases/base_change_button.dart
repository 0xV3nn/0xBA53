import 'package:flutter/material.dart';

class BaseChangeButton extends StatelessWidget {
  final String label;
  final dynamic Function()? onKeyPressed;

  BaseChangeButton({
    super.key,
    required this.label,
    this.onKeyPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
              padding: const EdgeInsets.all(10), 
              child: Container(
                width: 0.2 * size.width,
                height: 0.07 * size.height,
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
                  onPressed: onKeyPressed ?? () {
                    print('onKeyPressed is null');
                  },
                  child: Text(label, style: TextStyle(fontSize: 24))
                ),
              ),
            );
      }
}