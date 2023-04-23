import 'package:flutter/material.dart';
import 'package:xba5e/view/widgets/bases/modal_sheet_button.dart';

class BasesModalSheet extends StatelessWidget {
  final Function(String) onButtonPressed;

  const  BasesModalSheet({
    super.key,
    required this.onButtonPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Escolha uma base numérica',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            ModalSheetButton(label: 'Binário BIN', onKeyPressed: () {
              onButtonPressed('BIN');
              Navigator.of(context).pop();
            }),
            const SizedBox(height: 10.0),  
            ModalSheetButton(label: 'Octal OCT', onKeyPressed: () {
              onButtonPressed('OCT');
              Navigator.of(context).pop();
            }),
            const SizedBox(height: 10.0), 
            ModalSheetButton(label: 'Decimal DEC', onKeyPressed: () {
              onButtonPressed('DEC');
              Navigator.of(context).pop();
            }),
            const SizedBox(height: 10.0), 
            ModalSheetButton(label: 'Hexadecimal HEX', onKeyPressed: () {
              onButtonPressed('HEX');
              Navigator.of(context).pop();
            }),
            const SizedBox(height: 16.0), 
            SizedBox(
              height: 50,
              width: 50, 
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 231, 231, 231)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the bottom sheet
                },
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 16
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}