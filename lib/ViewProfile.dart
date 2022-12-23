import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/editProfile.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141416),
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/profilePic.png'),
              width: 75,
              height: 50,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'NAME HERE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 146,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  child: Icon(
                    Icons.logout,
                    color: Color(0xFF8A70BE),
                    size: 35,
                  ),
                ),
                Text(
                  'Log out',
                  style: TextStyle(
                    color: Color(0xFF8A70BE),
                    fontSize: 11,
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Your Profile',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 450,
          height: 410,
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
                  height: 14,
                ),
                Text(
                  'UserName',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'NAME',
                  style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 15),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  'National ID',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'xxxxxxxxxx',
                  style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 15),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  'Phone number',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '+9665xxxxxxxx',
                  style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 15),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Example@gmail.com',
                  style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 16),
                ),
                SizedBox(
                  height: 70,
                  width: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => editProfile()));
                      },
                      child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF8A70BE),
                          ),
                          child: Center(
                              child: Text(
                            'Edit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontFamily: 'Inter',
                            ),
                          ))),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFA11E1E),
                        ),
                        child: Center(
                            child: Text(
                          'Delete',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Inter',
                          ),
                        )))
                  ],
                ),
              ]),
        ),
      ]),
    );
  }
}
