import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timer/Presentation/Home/home_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'monospace'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
