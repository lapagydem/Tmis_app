import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:t_app/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'TMIS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash2(),
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new LoginScreen(),
      image: new Image.asset('assets/image/nssf.png'),
      imageBackground: AssetImage('assets/image/nss.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.green,
    );
  }
}
