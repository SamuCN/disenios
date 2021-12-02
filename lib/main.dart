import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); //si empleamos copyWith() nos da mas opciones para personalizarlo mas.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': ( _ ) => BasicDesignScreen(),
        'scroll_design':( _ ) => ScrollDesign(),
        'home_screen': ( _ ) => HomeScreen()
      },
    );
  }
}


