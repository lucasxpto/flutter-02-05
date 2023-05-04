import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:photo_view/photo_view.dart';

import 'navbar.dart';

class EasyLoadScreen extends StatefulWidget {
  const EasyLoadScreen({Key? key}) : super(key: key);

  @override
  State<EasyLoadScreen> createState() => _EasyLoadScreenState();
}

class _EasyLoadScreenState extends State<EasyLoadScreen> {
  void loadData() async {
    try {
      await EasyLoading.show();
      HttpClient client = HttpClient();
      HttpClientRequest request =
          await client.getUrl(Uri.parse('https://github.com'));
      HttpClientResponse response = await request.close();
      print(response);
      await EasyLoading.dismiss();
    } catch (e) {
      await EasyLoading.showError(e.toString());
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomBar(),
        body: Container(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  child: Text('loading'),
                  onPressed: () {
                    EasyLoading.show(status: 'Carregando...');
                    // loadData();
                    // await Future.delayed(Duration(seconds: 2));
                    // EasyLoading.show(status: 'loading...');
                    // await Future.delayed(Duration(seconds: 5));
                    // EasyLoading.dismiss();
                  },
                ),
                TextButton(
                  child: Text('loading data'),
                  onPressed: () {
                    // EasyLoading.show(status: 'Carregando...');
                    loadData();
                    // await Future.delayed(Duration(seconds: 2));
                    // EasyLoading.show(status: 'loading...');
                    // await Future.delayed(Duration(seconds: 5));
                    // EasyLoading.dismiss();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
