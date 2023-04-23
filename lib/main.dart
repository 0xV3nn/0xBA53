import 'package:flutter/material.dart';
import 'package:xba5e/view/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//  Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.all(16),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           showModalBottomSheet(
//                             context: context,
//                             builder: (context) => CustomKeyboard(
//                               onKeyPressed: _onKeyPressed,
//                             ),
//                           );
//                         },
//                         child: const Text('Show Keyboard'),
//                       ),
//                     ),
//                   ),
//                 ],
//               )