// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              bottom: 570,
              child: Image.asset('assets/images/main_top.png'),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              top: 600,
              child: Image.asset('assets/images/main_bottom.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: SingleChildScrollView(
                child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WELCOME TO EDU',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 18,
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SvgPicture.asset('assets/icons/chat.svg'),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.purple),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.fromLTRB(110, 12.5, 110, 12.5),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[350]),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.fromLTRB(110, 12.5, 110, 12.5),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ])),
    );
  }
}
