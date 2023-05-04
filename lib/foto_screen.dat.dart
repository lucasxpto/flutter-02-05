import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'navbar.dart';

class FotoScreen extends StatelessWidget {
  const FotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(),
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage("images/nature.jpg"),
        ),
      ),
    );
  }
}
