import 'package:flutter/material.dart';
import 'package:kependudukan/login_page.dart';
import 'package:kependudukan/search_page.dart';

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
      home: const SearchPage(),
    );
  }
}
