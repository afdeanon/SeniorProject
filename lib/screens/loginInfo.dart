import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
final _firebase = FirebaseAuth.instance;

class loginInfo extends StatefulWidget{
  const InfoScreen({super.key});
  //const InfoScreen({Key? key}): super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}
class _InfoScreenState extends State<InfoScreen>{
  final _form = GlobalKey<FormState>();
  var _fName = '';
  var _lName = '';
  var _enteredEmail = '';

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right:20,
                ),
                width: 200,
              ),
              Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _form,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'First Name'),
                            keyboardType: TextInputType.name,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            validator: (value){
                              if(value ==null || value.trim().isEmpty){
                                return "Please enter a valid First Name";
                              }
                            },
                            onSaved:(value){
                              _fName = value!;
                            },
                            ),
                            TextFormField(
                              decoration: 
                                const InputDecoration(labelText: 'Last NAme'),
                              obscureText: false,
                              validator:(value){
                                if(value ==null || value.trim().isEmpty){
                                return "Please enter a valid Last Name";
                               }
                              },
                              onSaved:(value){
                                _lName = value!;
                              }
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'EmailAddress'),
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                validator: (value){
                                  if (value ==null || value.trim().isEmpty == !value.contains('@')){
                                    return 'Please enter a valid email address';
                                  }
                                },
                                onSaved: (value){
                                  _enteredEmail = value!;
                                }
                              ),
                              const SizedBox(
                                height: 12, 
                              ),
                             /* ElevatedButton(
                                onPressed: _submit,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                ),
                                child: Text('Sign Up'),
                              ),
                              */
                            ),
                          ).
                        ],
                      ),
                    ),
                  )
                )
              ),
           // ],
          ),
        );
     // ),
    //),
  }
}
/**import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:social_workout_app/screens/authScreen.dart';
final _firebase = FirebaseAuth.instance;

class loginInfo extends StatelessWidget {
  const loginInfo({super.key});

  @override
  State<loginInfo> createState() => _loginInfoState();
}
class _loginInfoState extends State<loginInfoState>{
  final _form = GlobalKey<FormState>();
  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword= '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Information'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.primary,
              )),
        ],
      ),
      body: const Center(child: Text('Logged in!')),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                width: 200,
              ),
              Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _form,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            decoration:  InputDecoration(
                              labelText: "Username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                              fillColor:Colors.blue[100],
                              filled: true),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            validator:(value){
                              if(value ==null || value.trim().isEmpty || !value.contains('@')){
                                return 'Please enter a valid email address.';
                              }
                            },
                            onSaved: (value){
                              _enteredEmail = value!;
                            },
                          ),
                          TextFormField(
                            decoration: 
                              InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide : BorderSide.none
                                ),
                              fillColor: Colors.blue[100],
                              filled: true,
                              prefixIcon: const Icon(Icons.password),
                                ),
                            )
                          ),
                    ),
  }
}

**/ 