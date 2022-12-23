import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/passwords.dart';
import 'package:flutter_application_1/editWallet.dart';
import 'package:flutter_application_1/navigationBar.dart';

// ignore: must_be_immutable
class password_card extends StatelessWidget {
  final passwords _passwordToEdit;

  password_card(this._passwordToEdit);
  final CollectionReference _passshot = FirebaseFirestore.instance
      .collection('users')
      .doc('Kbayxiiu2qgCHVFVpMud')
      .collection('passwordsswallet');

  TextEditingController _platformController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      SizedBox(
        height: 17,
      ),
      Container(
          width: 360,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xff1b1b1e),
          ),
          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 12,
            bottom: 10,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Icon(
                  Icons.vpn_key_outlined,
                  color: Color(0xFF8A70BE),
                  size: 22,
                ),
                SizedBox(
                  width: 4,
                ),
                Text('${_passwordToEdit.platform}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8A70BE)))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'UserName',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFDADADA)),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              ' ${_passwordToEdit.username}',
              style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 13),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDADADA)),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '${_passwordToEdit.password}',
                  style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 13),
                  textAlign: TextAlign.start,
                )
              ]),
              SizedBox(
                width: 12,
              ),
              Icon(Icons.visibility_outlined,
                  color: Color(0xFFB7B7B7), size: 20),
              SizedBox(
                width: 95,
              ),
              // InkWell(
              // onTap: () {
              //   Navigator.push(
              //       context, MaterialPageRoute(builder: (_) => editWallet()));
              // },
              // child: Container(
              //     height: 30,
              //     width: 68,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Color(0xFF8A70BE),
              //     ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF8A70BE),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                onPressed: () {
                  _platformController.text = _passwordToEdit.platform!;
                  _usernameController.text = _passwordToEdit.username!;
                  _passwordController.text = _passwordToEdit.password!;

                  showDialog(
                      context: context,
                      builder: (context) => Dialog(
                            backgroundColor: Color(0xff1b1b1e),
                            insetPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))),
                            child: ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                SizedBox(
                                  height: 19,
                                ),
                                Center(
                                  child: Container(
                                      width: 300,
                                      height: 430,
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(25),
                                        color: Color(0xff1b1b1e),
                                      ),

                                      // padding: const EdgeInsets.only(
                                      //   left: 18,
                                      //   right: 32,
                                      //   top: 25,
                                      //   bottom: 10,
                                      // ),
                                      child: _buildQuestionForm()),
                                ),
                              ],
                            ),
                          ));
                },
                child: Center(
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),

              // ),
              SizedBox(
                width: 6,
              ),
              IconButton(
                icon: Icon(
                  Icons.delete_outlined,
                  color: Color(0xFFEC1F1F),
                  size: 32,
                ),
                onPressed: () {
                  deleteing();
                },
              )
            ])
          ]))
    ]));
    // SizedBox(
    //   height: 17,
    // ),
  }

  Widget _buildQuestionForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 9,
        ),
        Center(
          child: Text(
            'Edit',
            style: TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 19,
        ),
        Text(
          '   Platform',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            width: 360,
            height: 55,
            child: TextField(
                controller: _platformController,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xff616161),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFF8A70BE))),
                )),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '   UserName',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            width: 360,
            height: 55,
            child: TextField(
                controller: _usernameController,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff616161),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF8A70BE))))),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '   Password',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            width: 360,
            height: 55,
            child: TextField(
                controller: _passwordController,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff616161),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF8A70BE))))),
          ),
        ),
        SizedBox(
          height: 36,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            //   child: InkWell(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (_) => navigationBar()));
            // },
            child: SizedBox(
              height: 41,
              width: 89,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF4E5053),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Center(
            //   child: InkWell(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (_) => navigationBar()));
            // },
            child: SizedBox(
              height: 41,
              width: 89,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF8A70BE),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                onPressed: () {
                  updating();
                },
                child: Center(
                  child: Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }

  void updating() async {
    _passwordToEdit.platform = _platformController.text;
    _passwordToEdit.username = _usernameController.text;
    _passwordToEdit.password = _passwordController.text;

    FirebaseFirestore.instance
        .collection('users')
        .doc('Kbayxiiu2qgCHVFVpMud')
        .collection('passwordsswallet')
        .doc('ZD0Ck3pjvgWis2JmexEm')
        .update(_passwordToEdit.toJson());

    //  Navigator.push(context,
    //   MaterialPageRoute(builder: (_) => navigationBar()));
  }

  void deleteing() async {
    FirebaseFirestore.instance
        .collection('users')
        .doc('Kbayxiiu2qgCHVFVpMud')
        .collection('passwordsswallet')
        .doc('ZD0Ck3pjvgWis2JmexEm')
        .delete();
  }
}
