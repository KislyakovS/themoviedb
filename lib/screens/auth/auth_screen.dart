import 'package:flutter/material.dart';

import 'components/body.dart';

class AuthScreen extends StatelessWidget {
  static String routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
