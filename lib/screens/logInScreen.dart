import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_workout_app/screens/homeScreen.dart';

final _firebase = FirebaseAuth.instance;

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _form = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';
  final _isLogin = true;
  void _submit() async {
    print('submit');
    print('isLogin: $_isLogin');
    final isValid = _form.currentState!.validate();
    print(isValid);
    if (isValid) {
      _form.currentState!.save();
    }
    //_form.currentState!.save();

    if (_firebase == null) {
      // Handle error or return early
      return;
    }
    try {
      if (_isLogin) {
        //logs users in
        final userCredentials = await _firebase.signInWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
      }
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } on FirebaseAuthException catch (error) {
      print(error.toString());

      if (error.code == 'email-already-in-use') {
        //...
      }
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? 'Authentication failed.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.white,
      child: Form(
          key: _form,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              // margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
                validator: (value) {
                  if (value == null ||
                      value.trim().isEmpty ||
                      !value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                },
                onSaved: (value) {
                  _enteredEmail = value!;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              // margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.trim().length < 6) {
                      return 'Password must ne at least 6 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _enteredPassword = value!;
                  }),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: const Text("Forgot password?"))),
            Container(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: _submit,
                  child: const Text(
                    "Sign In",
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Create a new account",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            )
          ])),
    )));
  }
}
