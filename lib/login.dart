// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              right: 0,
              bottom: 0,
              top: 600,
              child: Image.asset('assets/images/login_bottom.png'),
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
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 18,
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset('assets/icons/login.svg'),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 194, 246),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                              decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'E-mail',
                            border: InputBorder.none,
                          )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 270,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 194, 246),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility),
                                ),
                                labelText: 'Password',
                                border: InputBorder.none,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
                        SizedBox(height: 30),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an Account?",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ])
                      ]),
                ),
              ),
            ),
          ])),
    );
  }
}
