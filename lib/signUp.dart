import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/ViewProfile.dart';
import 'package:flutter_application_1/navigationBar.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final formKey = GlobalKey<FormState>();
  String username = "";
  String email = "";
  int phoneNo = 0;
  int nationalID = 0;

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFF141416),
      body: Form(
        key: formKey,
        child: Column(children: [
          SizedBox(
            height: 49,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                width: 299,
              )
            ],
          ),
          SizedBox(height: 0.0001),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/Icon.png'),
                  width: 70,
                  height: 70,
                ),
                Text('Sign up',
                    style: TextStyle(
                      color: Color(0xfff8fafc),
                      fontSize: 35,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ))
              ]),
          SizedBox(height: 6),
          Container(
            width: 450,
            height: 630,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff1b1b1e),
            ),
            padding: const EdgeInsets.only(
              left: 18,
              right: 32,
              top: 25,
              bottom: 10,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'UserName',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(' *',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFEA0707),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xff616161),
                        width: 1.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Please enter your username';
                          validator:
                          (value) {
                            if (value == null || value.isEmpty)
                              return 'Required';
                            else if (value.contains(" ")) {
                              return 'Enter a valid username';
                            } else if (value.length < 5) {
                              return 'Username should be at least 5 characters';
                            } else if (value.length > 10) {
                              return 'Username should not exceed 10 characters';
                            } else if (value.contains("-/@#\$%!*+=(){}[]?")) {
                              return 'Valid special characters:( _ . )';
                            }
                          };
                        },
                        controller: userNameController,
                        onChanged: (value) => setState(() => username = value),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your username',
                            hintStyle: TextStyle(
                                fontSize: 16, color: Color(0xFF616161))),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'National ID',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(' *',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFEA0707),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xff616161),
                        width: 1.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                        onChanged: (value) =>
                            setState(() => nationalID = value as int),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your national id',
                            hintStyle: TextStyle(
                                fontSize: 16, color: Color(0xFF616161))),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone number',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(' *',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFEA0707),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(children: [
                    Text(
                      '+966',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 290,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xff616161),
                          width: 1.5,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: TextFormField(
                          onChanged: (value) =>
                              setState(() => phoneNo = value as int),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '5xxxxxxxx',
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Color(0xFF616161))),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          )),
                    )
                  ]),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(' *',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFEA0707),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xff616161),
                        width: 1.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                        onChanged: (value) => setState(() => email = value),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Example@gmail.com',
                            hintStyle: TextStyle(
                                fontSize: 16, color: Color(0xFF616161))),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        )),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        child: Image(
                          image: AssetImage('assets/face.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Container(
                      height: 27,
                      width: 219,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFF4E5053),
                      ),
                      child: Center(
                        child: Text(
                          'Set Up Face Id',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => navigationBar()));
                    },
                    child: Container(
                      height: 50,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF8A70BE),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            final isValid = formKey.currentState?.validate();
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )),
                ]),
          )
        ]),
      ),
    );
  }
}
