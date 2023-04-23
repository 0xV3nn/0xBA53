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

  @override
  void initState() {
    // TODO: implement initState
    super.initState(); 
  }

  void _basesModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BasesModalSheet(),
    );
  }

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'AC') {
        input_up.text = '';
      } else if (value == 'X' && input_up.text.isNotEmpty) {
        input_up.text = input_up.text.substring(0, input_up.text.length - 1);
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
                  BaseChangeButton(label: "DEC", onKeyPressed: _basesModalSheet),
                  NumberField(controller: input_up) 
                ],
              ),
              SizedBox(height: 0.05 * size.height),
              Row(
                children: [
                  BaseChangeButton(label: "HEX"),
                  NumberField(controller: input_down) 
                ],
              ),
              SizedBox(height: 0.053 * size.height),
              CustomKeyboard(
                onKeyPressed: _onKeyPressed
              ),
            ],
          ),
        ),
      );
  }
}
