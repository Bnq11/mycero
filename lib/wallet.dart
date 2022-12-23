import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/passwords.dart';
import 'package:flutter_application_1/addToWallet.dart';
import 'package:flutter_application_1/cards/password_card.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  List<Object> _passwordsList = [];

  void didChangeDependencies() {
    super.didChangeDependencies();
    getUserPasswords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141416),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 75,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 270),
          child: Text(
            'Welcome !',
            style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 15),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NAME',
              style: TextStyle(
                  color: Color(0xFFF8FAFC),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 225,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => addToWallet()));
                },
                child: Icon(
                  Icons.add_outlined,
                  color: Color(0xFF8A70BE),
                  size: 50,
                )),
          ],
        ),
        SizedBox(
          height: 19,
        ),
        Container(
          width: 317,
          height: 1,
          color: Color(0xFF242424),
        ),
        SizedBox(
          height: 38,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 170, bottom: 10),
          child: Text(
            '  Your passwords',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _passwordsList.length,
            itemBuilder: (BuildContext context, int index) {
              return password_card(_passwordsList[index] as passwords);
            },
          ),
        ),
      ]),
    );
  }

  Future getUserPasswords() async {
    var data = await FirebaseFirestore.instance
        .collection('users')
        .doc('Kbayxiiu2qgCHVFVpMud')
        .collection('passwordsswallet')
        .orderBy('platform', descending: false)
        .get();

    setState(() {
      _passwordsList =
          List.from(data.docs.map((doc) => passwords.fromSnapshot(doc)));
    });
  }
}
