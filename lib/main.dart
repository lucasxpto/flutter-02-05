import 'load_screen.dat.dart';
import 'video_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'email_screen.dart';
import 'foto_screen.dat.dart';
import 'home_screen.dat.dart';
import 'texto_screen.dat.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (_) => HomeScreen(),
      '/video': (_) => VideoScreen(),
      '/foto': (_) => FotoScreen(),
      '/email': (_) => ValidarEmailScreen(),
      '/texto': (_) => TextoAnimadoScreen(),
      '/load': (_) => EasyLoadScreen(),
    },
    builder: EasyLoading.init(),
  ));
}
