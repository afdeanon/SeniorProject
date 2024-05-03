import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_workout_app/screens/authScreens/signUpScreen.dart';
import 'package:social_workout_app/screens/homeScreen.dart';
import 'package:social_workout_app/screens/authScreens/logInScreen.dart';

import 'package:social_workout_app/screens/splashScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Senior Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {
            //x if (snapshot.connectionState == ConnectionState.waiting) {
            //   return const SplashScreen();
            // }
            if (snapshot.hasData) {
              print("go to home");
              return const HomeScreen();
            } else {
              //Changed type of Screen to edit the login and splash screens
              //return const LogInScreen();
              return const SplashScreen();
            }
          }),
    );
  }
}
