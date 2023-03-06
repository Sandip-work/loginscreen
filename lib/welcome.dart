
import 'package:flutter/material.dart';
import 'package:loginscreen/Register.dart';
import 'package:loginscreen/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
        Color(0xff8B2380),
        Color(0xff2A2663),
        ],
    ),
    ),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  SizedBox(height: 150,),
                  const Center(
                    child: Text("Welcome to The Matchmaking Application",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 200),
                  ClipRect(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // username textfield
                            SizedBox(
                              height: 50,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                  );
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                            side: const BorderSide(color: Colors.white)
                                        )
                                    )
                                ),
                                child: const Text("LOGIN",
                                style: TextStyle(fontSize: 20),),
                              ),
                            ),

                            const SizedBox(height: 10),

                            // sign in button
                            SizedBox(
                              height: 50,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: (() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()),
                                    );
                                }),
                                  style:
                                  ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.0),
                                              side: const BorderSide(color: Colors.white)
                                          )
                                      ),
                                  ),
                                child: const Text("REGISTER",
                              style: TextStyle(fontSize: 20),),
                              ),
                            ),

                            const SizedBox(height: 50),

                            const Center(
                              child: Text("Login with",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                            ),
                            ),

                            // not a member? register now
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //MainAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                       Material(
                                        type: MaterialType.transparency,
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(100.0),
                                          onTap: () {},
                                        child: const Padding(
                                          padding: EdgeInsets.all(10.0),
                                        child: Icon(
                                          FontAwesomeIcons.facebook,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),
                               ),

                                      Material(
                                        type: MaterialType.transparency,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(100.0),
                                            onTap: () {},
                                            child: const Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Icon(
                                                FontAwesomeIcons.twitter,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                      ),

                                      Material(
                                        type: MaterialType.transparency,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(100.0),
                                            onTap: () {},
                                            child: const Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Icon(
                                                FontAwesomeIcons.google,
                                                size: 40,
                                                color: Colors.white,
                                                ),
                                              ),
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
