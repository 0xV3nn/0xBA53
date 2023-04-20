import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('0xBA5E'),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],      
        ),
        body: Column(
          children: const [
            SizedBox(height: 20.0),
            Center(
              child: Text(
                "Hello World", 
                style: TextStyle(
                  fontSize: 20.0, 
                  color: Colors.black
                )
              )
            ),
          ],
        ),
      );
  }
}