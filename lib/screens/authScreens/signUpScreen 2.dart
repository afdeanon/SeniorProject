import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_workout_app/fire_auth.dart';
import 'package:social_workout_app/screens/authScreens/logInScreen.dart';
import 'package:social_workout_app/screens/homeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firebase = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final _passwordController = TextEditingController();
final usersDatabase = db.collection("users");

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _form = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _password = '';
  var _confirmPassword = '';
  var _enteredName = '';

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
      User? user = await FireAuth.registerUsingEmailPassword(
          email: _enteredEmail, password: _password, name: _enteredName);
      print(user);
      usersDatabase.doc(user!.uid).set({
        'username': "to be done...",
        'name': _enteredName,
        'email': _enteredEmail,
        'profileImage':
            'https://firebasestorage.googleapis.com/v0/b/senior-project-eb3b8.appspot.com/o/user-profile-icon-in-flat-style-member-avatar-illustration-on-isolated-background-human-permission-sign-business-concept-vector.jpg?alt=media&token=c258a441-7518-424f-8086-58d3eb48ff16',
        'routines': [],
        'friends': [],
      });
      DocumentReference dummyDoc =
          usersDatabase.doc(user.uid).collection('Routines').doc();
      await dummyDoc.set({'dummy': true});
      await dummyDoc.delete();
      if (user != null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
    } on FirebaseAuthException catch (error) {
      print(error.toString());

      if (error.code == 'email-already-in-use') {
        //...
      }
    }
  }

  Future<DocumentSnapshot> _getUser(String id) {
    return usersDatabase.doc(_firebase.currentUser!.uid).get();
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
                "Create a New Account",
                style: TextStyle(
                  color: Color(0xFF558CE0),
                  fontSize: 27,
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
                decoration:
                    const InputDecoration(labelText: 'First and Last Name'),
                keyboardType: TextInputType.name,
                autocorrect: false,
                textCapitalization: TextCapitalization.words,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a name';
                  }
                },
                onSaved: (value) {
                  _enteredName = value!;
                },
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
              alignment: Alignment.centerLeft,
              child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.trim().length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              // margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _confirmPassword = value!;
                  }),
            ),
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
                    "Sign Up",
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LogInScreen()),
                  );
                },
                child: const Text(
                  "Already have an account?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            )
          ])),
    )));
  }
}
