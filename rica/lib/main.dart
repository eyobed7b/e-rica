import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home.dart';

import 'Pages/authentication/Authentication/SignIn.dart';
import 'Pages/authentication/Authentication/SplashScreen.dart';
import 'Pages/authentication/Authentication/signup.dart';
 
import 'Pages/bottom_nav.dart';
import 'widgets/them.dart';
 

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
     
      return runApp(MyApp());
}

 
final ThemeData theme = ThemeData(
    primarySwatch: generateMaterialColor(Palette.primary),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Health Center",
      theme: ThemeData(
        primaryColor: Colors.teal[700],
        primarySwatch: generateMaterialColor(Color.fromARGB(255, 215, 90, 37)),
        scaffoldBackgroundColor: Color.fromARGB(255, 230, 210, 198),
        // primarySwatch: customPrimary,
        primaryColorLight:  Color.fromARGB(255, 220, 93, 34),
        
        
        primaryColorDark:  Color.fromARGB(255, 193, 86, 33),
        primaryIconTheme:  IconThemeData(color: Colors.black),
        progressIndicatorTheme: ProgressIndicatorThemeData( color: Color.fromARGB(255, 226, 95, 38)  )
        ),

      routes: <String, WidgetBuilder>{
        "SPLASH_SCREEN": (BuildContext context) =>  SplashScreen(),
        "SIGN_IN": (BuildContext context) =>  SignInPage(),
        "SIGN_UP": (BuildContext context) =>  SignUpScreen(),
        "bottom_nav":(BuildContext context)=>BottomNav(),

      },
      initialRoute: "SPLASH_SCREEN",
    );
  }
}
