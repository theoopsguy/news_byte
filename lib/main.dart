import 'package:flutter/material.dart';
import 'package:news_byte/view/home.dart';
import 'package:news_byte/view/splash.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSplash = true;
  LoadHome(){
    Future.delayed(Duration(seconds: 3), (){
      setState(() {
        _isSplash = false;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
    LoadHome();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Byte',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isSplash ? SplashScreen() : HomeScreen(),
    );
  }
}
