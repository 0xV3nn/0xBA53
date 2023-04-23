import 'package:flutter/material.dart';
import 'package:xba5e/view/widgets/custom_keyboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // showModalBottomSheet

  String input = '';

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'AC') {
        input = '';
      } else if (value == 'X' && input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      } else if (value != 'AC' && value != 'X') {
        input += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('0xBA5E'),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],      
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    input,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Center(
                child: CustomKeyboard(
                  onKeyPressed: _onKeyPressed,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
