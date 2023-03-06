
import 'package:flutter/material.dart';

import 'login.dart';

class LogggedInPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(



      child: Scaffold(
        backgroundColor: Colors.grey[300],
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 300),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                      child: Form(
                        key: _formKey,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                                const Icon(
                                    Icons.check,
                                    size: 70,
                                    color:Colors.green
                                ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text("Email Verification!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child:
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Please check your email inbox to confirm and complete your details after logging in the application.Thank you ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ),
                              const SizedBox(height: 50),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginPage()));
                                    },
                                    style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0),
                                              side: const BorderSide(color: Colors.white)
                                          ),
                                        )
                                    ),
                                    child: const Text("OK",
                                      style: TextStyle(fontSize: 20),)
                                ),
                              ),
                              const SizedBox(height: 50,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 300,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}