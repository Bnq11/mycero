import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigationBar.dart';

class editWallet extends StatefulWidget {
  const editWallet({Key? key}) : super(key: key);

  @override
  State<editWallet> createState() => _editWalletState();
}

class _editWalletState extends State<editWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141416),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Edit',
                  style: TextStyle(
                    color: Color(0xfff8fafc),
                    fontSize: 26,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 12),
              Container(
                  width: 450,
                  height: 400,
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
                        Text(
                          'Platform',
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'UserName',
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              )),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 41,
                                  width: 94,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFF4E5053),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 80,
                              ),
                              Center(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => navigationBar()));
                                },
                                child: Container(
                                  height: 41,
                                  width: 94,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFF8A70BE),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                            ])
                      ]))
            ]),
      ),
    );
  }
}
