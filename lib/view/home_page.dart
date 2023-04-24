import 'package:flutter/material.dart';
import 'package:xba5e/view/widgets/bases/base_change_button.dart';
import 'package:xba5e/view/widgets/bases/bases_modal_sheet.dart';
import 'package:xba5e/view/widgets/bases/number_field.dart';
import 'package:xba5e/view/widgets/keyboard/custom_keyboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final input = TextEditingController(), 
  output = TextEditingController();

  String baseButtonInput = 'DEC';
  String baseButtonOutput = 'BIN';

  Map<String, int> radixMap = {
    'BIN': 2,
    'OCT': 8,
    'DEC': 10,
    'HEX': 16
  };

  @override
  void initState() {
    super.initState();
    input.addListener(() {
      setState(() {
        if (baseButtonInput.isNotEmpty && input.text.isNotEmpty) {
          int radix = radixMap[baseButtonInput] ?? 10;
          output.text = BigInt.parse(input.text, radix: radix).toRadixString(radixMap[baseButtonOutput] ?? 2).toUpperCase();
        }
      });
    });
  }

  void _basesModalSheetUp() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BasesModalSheet(
        onButtonPressed: _onModalButtonPressedUp,
      ),
    );
  }

  void _basesModalSheetDown() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BasesModalSheet(
        onButtonPressed: _onModalButtonPressedDown,
      ),
    );
  }

  _onModalButtonPressedUp(String value) {
    setState(() {
      if (value == 'BIN') {
        input.text = '';
        output.text = '';
        baseButtonInput = 'BIN';
      } else if (value == 'OCT') {
        input.text = '';
        output.text = '';
        baseButtonInput = 'OCT';
      } else if (value == 'DEC') {
        input.text = '';
        output.text = '';
        baseButtonInput = 'DEC';
      } else if (value == 'HEX') {
        input.text = '';
        output.text = '';
        baseButtonInput = 'HEX';
      }
    });
  }

  _onModalButtonPressedDown(String value) {
    setState(() {
      if (value == 'BIN') {
        input.text = '';
        output.text = '';
        baseButtonOutput = 'BIN';
      } else if (value == 'OCT') {
        input.text = '';
        output.text = '';
        baseButtonOutput = 'OCT';
      } else if (value == 'DEC') {
        input.text = '';
        output.text = '';
        baseButtonOutput = 'DEC';
      } else if (value == 'HEX') {
        input.text = '';
        output.text = '';
        baseButtonOutput = 'HEX';
      }
    });
  }

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'AC') {
        input.text = '';
        output.text = '';
      } else if (value == 'X' && input.text.isNotEmpty) {
        input.text = input.text.substring(0, input.text.length - 1);
        input.text == '' ? output.text = '' : null;
      } else if (value != 'AC' && value != 'X') {
        input.text += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('0xBA5E', style: TextStyle(color: Colors.orange[900])),
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),     
          elevation: 1,
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline, color: Colors.orange[900]),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [
              Row(
                children: [
                  BaseChangeButton(
                    label: baseButtonInput, 
                    onKeyPressed: _basesModalSheetUp,
                  ),
                  NumberField(
                    controller: input,
                   
                  ) 
                ],
              ),
              Row(
                children: [
                  BaseChangeButton(
                    label: baseButtonOutput, 
                    onKeyPressed: _basesModalSheetDown
                  ),
                  NumberField(controller: output) 
                ],
              ),
              CustomKeyboard(
                onKeyPressed: _onKeyPressed,
                type: baseButtonInput, 
              ),
            ],
          ),
        ),
      );
  }
}
