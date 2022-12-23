// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigationBar.dart';
import 'package:flutter_application_1/signUp.dart';
import 'package:flutter_application_1/localAuth.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_application_1/wallet.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    final validCharacters = RegExp(r'^[a-zA-Z0-9._]+$');

    return Scaffold(
        backgroundColor: Color(0xFF141416),
        body: Column(children: [
          SizedBox(height: 160),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/Icon.png'),
                  width: 70,
                  height: 70,
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    color: Color(0xfff8fafc),
                    fontSize: 36,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])

          //CONTAINER !!!

          ,
          SizedBox(height: 6),
          Container(
            width: 450,
            height: 360,
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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 45,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 0.01),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 370,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff141416),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff8a6fbe),
                                    ),
                                    padding: const EdgeInsets.only(
                                      left: 52,
                                      right: 51,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Biometric",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 2,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "OTP \nOne Time Password",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff595961),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),

                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("    Username",
                      style: TextStyle(
                        color: Color(0xfff8fafc),
                        fontSize: 18,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      )),
                ]),
                SizedBox(height: 10),
                Form(
                  child: Container(
                    width: 320,
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
                        },
                        controller: userNameController,
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
                ),
                SizedBox(height: 46),
                // Center(
                // child: InkWell(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => navigationBar()));
                // },
                // child: GestureDetector(
                //   onTap: () async {
                //     final authenticate = await LocalAuth.authenticate();
                //   },
                Container(
                  height: 50,
                  width: 273,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF8A70BE),
                  ),
                  //     child: Center(
                  // child: Container(
                  //   height: 50,
                  //   width: 273,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(12),
                  //     color: Color(0xFF8A70BE),

                  child: Center(
                    child: GestureDetector(
                      onTap: () async {
                        bool isAuthenticated = await LocalAuth.authenticate();
                        if (isAuthenticated) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const navigationBar()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Authentication failed.'),
                            ),
                          );
                        }
                      },
                      // onTap: () async {
                      //   final authenticate = await LocalAuth.authenticate();
                      // },
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 38),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Don’t have an account ? ",
                      style: TextStyle(
                        color: Color(0xffd4d4d4),
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => signUp()));
                      },
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          color: Color(0xff8a6fbe),
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
