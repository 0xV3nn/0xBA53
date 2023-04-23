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

  final input_up = TextEditingController();
  final input_down = TextEditingController();
  String baseButtonUp = 'DEC';
  String baseButtonDown = 'BIN';

  Map<String, int> radixMap = {
    'BIN': 2,
    'OCT': 8,
    'DEC': 10,
    'HEX': 16
  };

  @override
  void initState() {
    super.initState();
    input_up.addListener(() {
      setState(() {
        if (baseButtonUp.isNotEmpty && input_up.text.isNotEmpty) {
          int radix = radixMap[baseButtonUp] ?? 10;
          input_down.text = int.parse(input_up.text, radix: radix).toRadixString(radixMap[baseButtonDown] ?? 2).toUpperCase();
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
        input_up.text = '';
        input_down.text = '';
        baseButtonUp = 'BIN';
      } else if (value == 'OCT') {
        input_up.text = '';
        input_down.text = '';
        baseButtonUp = 'OCT';
      } else if (value == 'DEC') {
        input_up.text = '';
        input_down.text = '';
        baseButtonUp = 'DEC';
      } else if (value == 'HEX') {
        input_up.text = '';
        input_down.text = '';
        baseButtonUp = 'HEX';
      }
    });
  }

  _onModalButtonPressedDown(String value) {
    setState(() {
      if (value == 'BIN') {
        input_up.text = '';
        input_down.text = '';
        baseButtonDown = 'BIN';
      } else if (value == 'OCT') {
        input_up.text = '';
        input_down.text = '';
        baseButtonDown = 'OCT';
      } else if (value == 'DEC') {
        input_up.text = '';
        input_down.text = '';
        baseButtonDown = 'DEC';
      } else if (value == 'HEX') {
        input_up.text = '';
        input_down.text = '';
        baseButtonDown = 'HEX';
      }
    });
  }

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'AC') {
        input_up.text = '';
        input_down.text = '';
      } else if (value == 'X' && input_up.text.isNotEmpty) {
        input_up.text = input_up.text.substring(0, input_up.text.length - 1);
        input_up.text == '' ? input_down.text = '' : null;
      } else if (value != 'AC' && value != 'X') {
        input_up.text += value;
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
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: [
              Row(
                children: [
                  BaseChangeButton(
                    label: baseButtonUp, 
                    onKeyPressed: _basesModalSheetUp,
                  ),
                  NumberField(
                    controller: input_up,
                   
                  ) 
                ],
              ),
              SizedBox(height: 0.05 * size.height),
              Row(
                children: [
                  BaseChangeButton(
                    label: baseButtonDown, 
                    onKeyPressed: _basesModalSheetDown
                  ),
                  NumberField(controller: input_down) 
                ],
              ),
              SizedBox(height: 0.053 * size.height),
              CustomKeyboard(
                onKeyPressed: _onKeyPressed,
                type: baseButtonUp,
              ),
            ],
          ),
        ),
      );
  }
}
