// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_workout_app/screens/homeScreen.dart';

final _firebase = FirebaseAuth.instance;

class signUpBodyInfo extends StatefulWidget {
  const signUpBodyInfo({super.key});
  @override
  State<signUpBodyInfo> createState() => _signUpBodyInfoState();
}

class _signUpBodyInfoState extends State<signUpBodyInfo> {
  final _form = GlobalKey<FormState>();
  var _height = '';
  var _weight = '';
  void _submit() async {
    print('submit');
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
      // final userCredentials = await _firebase.createUserWithEmailAndPassword(
      //     email: _enteredEmail, password: _enteredPassword);
      // print(userCredentials);
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => HomeScreen()),
      // );
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
              padding: const EdgeInsets.fromLTRB(35, 6, 35, 10),
              //margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Create a new account',
                style: TextStyle(
                  color: Color(0xFF558CE0),
                  fontSize: 28,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 38),
              //margin: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Body Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 226,
              height: 20,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: Color(0xFF558CE0),
                        shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFF558CE0)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 8,
                    child: Container(
                      width: 206,
                      height: 4,
                      decoration: BoxDecoration(color: Color(0xFF558CE0)),
                    ),
                  ),
                  Positioned(
                    left: 206,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: Color(0xFF558CE0),
                        shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFF558CE0)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 103,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: Color(0xFF558CE0),
                        shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFF558CE0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 43, 35, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Height (cm)',
                    style: TextStyle(
                      color: Color(0xFF343434),
                      fontSize: 15,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                      width: 307,
                      height: 39,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.50, color: Color(0xFFD4D4D4)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 2, 2),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          autocorrect: false,
                          textCapitalization: TextCapitalization.sentences,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your height';
                            } else if (value.contains(RegExp(r'[A-Z]'))) {
                              return 'Please input a valid height.';
                            }
                          },
                          onSaved: (value) {
                            _height = value!;
                          },
                        ),
                      )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Weight (lbs)',
                    style: TextStyle(
                      color: Color(0xFF343434),
                      fontSize: 15,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 307,
                    height: 39,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1.50, color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(5, 2, 2, 2),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        autocorrect: false,
                        textCapitalization: TextCapitalization.sentences,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your weight.';
                          }
                        },
                        onSaved: (value) {
                          _weight = value!;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(42, 10, 35, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.fromLTRB(35, 89, 35, 0),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: _submit,
                      // style: ElevatedButton.styleFrom(
                      //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      // ),
                      child: const Text(
                        "Done",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            //   // margin: const EdgeInsets.symmetric(vertical: 10),
            //   alignment: Alignment.centerLeft,
            // child: TextFormField(
            //   decoration: const InputDecoration(labelText: 'Email Address'),
            //   keyboardType: TextInputType.emailAddress,
            //   autocorrect: false,
            //   textCapitalization: TextCapitalization.none,
            // validator: (value) {
            //   if (value == null ||
            //       value.trim().isEmpty ||
            //       !value.contains('@')) {
            //     return 'Please enter a valid email address.';
            //   }
            // },
            // onSaved: (value) {
            //   _enteredEmail = value!;
            // },
            // ),
            // ),
            // Container(
            //   padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            //   // margin: const EdgeInsets.symmetric(vertical: 10),
            //   alignment: Alignment.centerLeft,
            //   child: TextFormField(
            //     decoration: const InputDecoration(labelText: 'Email Address'),
            //     keyboardType: TextInputType.emailAddress,
            //     autocorrect: false,
            //     textCapitalization: TextCapitalization.none,
            //     validator: (value) {
            //       if (value == null ||
            //           value.trim().isEmpty ||
            //           !value.contains('@')) {
            //         return 'Please enter a valid email address.';
            //       }
            //     },
            //     onSaved: (value) {
            //       _enteredEmail = value!;
            //     },
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            //   // margin: const EdgeInsets.symmetric(vertical: 10),
            //   alignment: Alignment.centerLeft,
            //   child: TextFormField(
            //       decoration: const InputDecoration(labelText: 'Password'),
            //       obscureText: true,
            //       validator: (value) {
            //         if (value == null || value.trim().length < 6) {
            //           return 'Password must ne at least 6 characters long';
            //         }
            //         return null;
            //       },
            //       onSaved: (value) {
            //         // _enteredPassword = value!;
            //       }),
            // ),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
            //     alignment: Alignment.centerRight,
            //     child: TextButton(
            //         onPressed: () {}, child: const Text("Forgot password?"))),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
            //     alignment: Alignment.center,
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         minimumSize: Size(screenWidth, 40),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(5.0),
            //         ),
            //       ),
            //       onPressed: _submit,
            //       child: const Text(
            //         "Sign In",
            //       ),
            //     )),
            // Container(
            //   padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            //   alignment: Alignment.center,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "Create a new account",
            //       style: TextStyle(decoration: TextDecoration.underline),
            //     ),
            //   ),
            // )
          ])),
    )));
  }
}
