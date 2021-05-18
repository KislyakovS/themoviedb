import 'package:flutter/material.dart';

import 'forma.dart';

class Body extends StatelessWidget {
  final textStyle = const TextStyle(fontSize: 16, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Forma(),
            const SizedBox(height: 25),
            Text(
              'In order to use the editing and rating capabilities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.',
              style: textStyle,
            ),
            const SizedBox(height: 10),
            Text(
              'If you signed up but didn\'t get your verification email, click here to have it resent.',
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
