import 'package:flutter/material.dart';

import 'navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(),
      body: Container(
        child: Text('Home'),
      ),
    );
  }
}
