import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/pages/remote_control_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control remoto universal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RemoteControlPage(),
    );
  }
}


