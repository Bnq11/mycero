import 'package:flutter/material.dart';
import 'package:flutter_application_1/addToWallet.dart';
import 'package:flutter_application_1/editWallet.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
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
          height: 15,
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
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF616161),
                    size: 30,
                  ),
                  hintText: 'Search your password',
                  hintStyle: TextStyle(fontSize: 16, color: Color(0xFF616161))),
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              )),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text(
            'Your passwords',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
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
                  Text('Instagram',
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
                ' ReemaNawaff_',
                style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 13),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 17,
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
                    '*********',
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
                  width: 112,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => editWallet()));
                  },
                  child: Container(
                      height: 30,
                      width: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF8A70BE),
                      ),
                      child: Center(
                          child: Text(
                        'Edit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                        ),
                      ))),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.delete_outlined,
                  color: Color(0xFFEC1F1F),
                  size: 32,
                )
              ])
            ])),
        SizedBox(
          height: 20,
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
                  Text('Twitter',
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
                ' Reema_20',
                style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 13),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 17,
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
                    '**********',
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
                  width: 112,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => editWallet()));
                  },
                  child: Container(
                      height: 30,
                      width: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF8A70BE),
                      ),
                      child: Center(
                          child: Text(
                        'Edit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                        ),
                      ))),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.delete_outlined,
                  color: Color(0xFFEC1F1F),
                  size: 32,
                )
              ])
            ]))
      ]),
    );
  }
}
