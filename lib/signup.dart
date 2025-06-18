// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(children: [
              Positioned(
                right: 220,
                bottom: 550,
                child: Image.asset('assets/images/signup_top.png'),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                top: 600,
                child: Image.asset('assets/images/main_bottom.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 18,
                                letterSpacing: 2),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/signup.svg',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 270,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 238, 194, 246),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextField(
                                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
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
                                  labelText: 'Password Confirmation',
                                  border: InputBorder.none,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'SIGN UP',
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
                                  "Already have an Account?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 2,
                                color: Colors.grey[400],
                              )),
                              Text(
                                'OR',
                                style: TextStyle(color: Colors.purple),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 2,
                                color: Colors.grey[400],
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/facebook.svg',
                                color: Colors.purple,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(width: 60),
                              SvgPicture.asset(
                                'assets/icons/twitter.svg',
                                color: Colors.purple,
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(width: 60),
                              SvgPicture.asset(
                                'assets/icons/google-plus.svg',
                                color: Colors.purple,
                                height: 45,
                                width: 45,
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ])));
  }
}
