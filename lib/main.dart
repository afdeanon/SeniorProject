import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_workout_app/screens/authScreens/authScreen.dart';
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
      routes:{
        '/login' : (context) => const LogInScreen(),
        '/signup' : (context) => const SignUpScreen(),
        '/home' : (context) => const HomeScreen(),
        '/auth' : (context) => const AuthScreen(),
        '/splash' : (context) => const SplashScreen(),
        '/profile' : (context) => const HomeScreen(),
        '/workout' : (context) => const HomeScreen(),
        '/ranking' : (context) => const HomeScreen(),
        '/editProfile' : (context) => const HomeScreen(),
        '/manageFriends' : (context) => const HomeScreen(),
        '/workoutScreen' : (context) => const HomeScreen(),
        '/workoutDetails' : (context) => const HomeScreen(),
        '/workoutHistory' : (context) => const HomeScreen(),
        '/workoutHistoryDetails' : (context) => const HomeScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // home: StreamBuilder(
      //     stream: FirebaseAuth.instance.authStateChanges(),
      //     builder: (ctx, snapshot) {
      //       //x if (snapshot.connectionState == ConnectionState.waiting) {
      //       //   return const SplashScreen();
      //       // }
      //       if (snapshot.hasData) {
      //         return const HomeScreen();
      //       } else {
      //         //Changed type of Screen to edit the login and splash screens
      //         //return const LogInScreen();
      //         return const SplashScreen();
      //       }
      //     }),
    );
  }
}
