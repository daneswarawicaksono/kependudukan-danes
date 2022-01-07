import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kependudukan/input_new_data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController =
      TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  String password = 'daneswara2006';
  String username = 'daneswara';
  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFF227471),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(30.0),
    );
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFF227471),
        automaticallyImplyLeading: true,
        title: const Text(
          'Login',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          Image.asset(
            'assets/images/penduduk.jpg',
            width: 100,
            height: 300,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 16,
          ),
          LoginForm(
            label: 'Username',
            border: border,
            controller: usernameController,
          ),
          SizedBox(
            height: 16,
          ),
          LoginForm(
            label: 'Password',
            border: border,
            controller: passwordController,
          ),
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {
              if (usernameController.text == "" &&
                  passwordController.text == "") {
                // showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //           title: Text('error'),
                //           content: Text('Username dan password harus diisi'),
                //         ));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Username dan password harus diisi'),
                ));
              } else if (usernameController.text != username &&
                  passwordController.text != password) {
                // showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //           title: Text('error'),
                //           content: Text('Username dan password harus benar'),
                //         ));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Username dan password harus benar'),
                ));
              } else if (usernameController.text == username &&
                  passwordController.text == password) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputNewData(),
                  ),
                );
              } else {
                // showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //           title: Text('error'),
                //           content: Text('something error'),
                //         ));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Something error'),
                ));
              }
            },
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF206766),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(20)),
          )
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.label,
    required this.border,
    this.controller,
  }) : super(key: key);

  final String label;
  final InputBorder border;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF206766),
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: border,
            hintText: label,
            focusedBorder: border.copyWith(
              borderSide: BorderSide(
                width: 3.0,
                color: Color(0xFF206766),
              ),
            ),
            enabledBorder: border,
          ),
        )
      ],
    );
  }
}
