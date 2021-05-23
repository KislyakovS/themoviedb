import 'package:flutter/material.dart';

import 'components/body.dart';

class PeopleScreen extends StatelessWidget {
  static String routeName = '/people';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('People')),
      body: Body()
    );
  }
}