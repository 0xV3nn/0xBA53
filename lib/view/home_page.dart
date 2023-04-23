import 'package:flutter/material.dart';
import 'package:xba5e/view/widgets/custom_keyboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // showModalBottomSheet

  // String input = '';

  final input = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    input.text = '';
  }


  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'AC') {
        input.text = '';
      } else if (value == 'X' && input.text.isNotEmpty) {
        input.text = input.text.substring(0, input.text.length - 1);
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
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        controller: input,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          hintStyle: TextStyle(fontSize: 24),
                        ),
                        style: const TextStyle(fontSize: 24),
                        textAlign: TextAlign.right,
                        
                        readOnly: true,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.05 * size.height),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        controller: input,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          hintStyle: TextStyle(fontSize: 24),
                        ),
                        style: const TextStyle(fontSize: 24),
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        readOnly: true,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.05 * size.height),
              CustomKeyboard(
                onKeyPressed: _onKeyPressed
              ),
            ],
          ),
        ),
      );
  }
}
