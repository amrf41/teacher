import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/screens/splashScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: WelcomeScreen(),
    );
  }
}
