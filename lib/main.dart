import 'package:flutter/material.dart';
import 'package:kependudukan/data_diri.dart';
import 'package:kependudukan/input_new_data.dart';
import 'package:kependudukan/login_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kependudukan',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
