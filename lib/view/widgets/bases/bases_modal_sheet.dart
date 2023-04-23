import 'package:flutter/material.dart';

class BasesModalSheet extends StatelessWidget {
  const BasesModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0), 
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
            SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () {
                  // Handle button 1 tap
                },
                child: const Text(
                    'Binário BIN',
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 10.0),  
            SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(10),
                ),
                
                onPressed: () {
                  // Handle button 2 tap
                },
                child: const Text(
                    'Octal OCT',
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 10.0), 
            SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () {
                  // Handle button 3 tap
                },
                child: const Text(
                    'Decimal DEC',
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 10.0), 
            SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(10),
                ),
                onPressed: () {
                  print('Button 4 tapped');
                  // Handle button 4 tap
                },
                child: const Text(
                    'Hexadecimal HEX',
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18 
                    ),
                  ),
              ),
            ),
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

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Modal Bottom Sheet Title',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle button 1 tap
              },
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button 2 tap
              },
              child: Text('Button 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button 3 tap
              },
              child: Text('Button 3'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button 4 tap
              },
              child: Text('Button 4'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the bottom sheet
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      );
    },
  );
}
