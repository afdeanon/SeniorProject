import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

//asked to run pub get?

final _firebase = FirebaseAuth.instance;
class bodyInfo extends StatefulWidget{
  const bodyInfo({super.key});

  @override
  State<bodyInfo> createState()=> _BodyInfoScreenState();
}

class _BodyInfoScreenState extends State<bodyInfo>{
  final _form = GlobalKey<FormState>();
  var _height = '';
  var _weight = '';

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create a new account',
                style: TextStyle(
                  color: Color(0xFF558CE0),
                  fontSize:28,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w600,
                  height:0,
                )
              ),
              const Text(
                'Body Information',
                style: TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 22,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w400,
                  height:0,
                )
              ),
              Container(
                margin: const EdgeInsets.only(
                  top:30,
                  bottom:20,
                  left:20,
                  right:20
                ),
                width:200,
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
                            decoration: 
                                const InputDecoration(labelText: 'Height'),
                                keyboardType: TextInputType.number,
                                autocorrect: false,
                                validator:(value){
                                  if (value ==null ){
                                    return "Please enter a valid height";
                                  }
                                },
                                onSaved: (value){
                                  _height = value!;
                                },
                          ),
                          TextFormField(
                            decoration: 
                                const InputDecoration(labelText: 'Weight'),
                                keyboardType: TextInputType.number,
                                autocorrect: false,
                                validator:(value) {
                                  if (value == null){
                                    return "Please enter a valid weight";
                                  }
                                },
                                onSaved: (value){
                                  _weight = value!;
                                }),
                            const SizedBox(
                              height: 12 ,)
                            
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ) ,
        ) ,
      ),
    );
  }

}

