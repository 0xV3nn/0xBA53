import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ), 
          title: Text('About', style: TextStyle(color: Colors.orange[900])),
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),     
          elevation: 1,
        ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 8.0),
              SizedBox(width: 8.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 0.8 * size.width, 
                  child: const Text(
                          'Anyone is free to copy, modify, publish, use, compile, sell, or'
                          ' distribute this software, either in source code form or as a compiled'
                          ' binary, for any purpose, commercial or non-commercial, and by any means.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 18,
                        )),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: SizedBox(
                  width: 0.8 * size.width,
                  child: const Text(
                    "Built by @ogabrielpereira with Flutter"
                    "\n\n"
                    "github.com/ogabrielpereira",
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)
                  )
                ),
              ),
              
            ],
          ),
      ),

    );
  }
}