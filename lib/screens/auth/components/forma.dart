import 'package:flutter/material.dart';
import 'package:themoviedb/screens/home/home_screen.dart';

class Forma extends StatefulWidget {
  @override
  _FormaState createState() => _FormaState();
}

class _FormaState extends State<Forma> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  String? messageError = null;

  void _auth() {
    final login = _loginController.text;
    final password = _passwordController.text;

    if (login.isNotEmpty && password.isNotEmpty) {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    } else {
      setState(() {
        messageError = 'Wrong login or password';
      });
    }
  }

  void _resetPassword() {
    print('reset password');
  }

  Widget build(BuildContext context) {
    const primeColor = Color(0xFF2bb4e4);
    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    final textFieldDecoration = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: primeColor,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (messageError != null) ...[
          Text(
            messageError!,
            style: const TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 20),
        ],
        const Text(
          'Username',
          style: textStyle,
        ),
        TextField(
          controller: _loginController,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 16),
        const Text(
          'Password',
          style: textStyle,
        ),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 19, vertical: 6),
                ),
                backgroundColor: MaterialStateProperty.all(primeColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            TextButton(
              onPressed: _resetPassword,
              child: const Text(
                'Reset password',
                style: TextStyle(color: primeColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
