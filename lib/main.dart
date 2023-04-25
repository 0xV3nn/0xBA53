import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xba5e/view/about_page.dart';
import 'package:xba5e/view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage()
      }
    );
  }
}
