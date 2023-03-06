
import 'package:flutter/material.dart';
import 'package:loginscreen/LoggedIn.dart';

class LoginPage extends StatelessWidget {
  bool checkedValue = false;

  LoginPage({super.key});

  // text editing controllers
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // sign user in method
  void signUserIn() {
    if (_formKey.currentState!.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(height: 70),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: const Text("Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),

                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: const Text("Hello, Welcome back ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ),

                const SizedBox(height: 30),

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
                              const SizedBox(height: 30),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Username ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300)),
                          ),
                              const SizedBox(height: 10),
                              TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  //labelText: 'Username',
                                ),
                                obscureText: true,
                              ),
                              const SizedBox(
                                  height: 50),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child:
                               Text("Password ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                          ),
                              const SizedBox(height: 10),
                              TextField(
                                controller: passwordController,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  //labelText: 'Password',
                                ),
                                obscureText: true,
                              ),
                              const SizedBox(
                                  height: 30),
                              SizedBox(
                                height: 50,
                                width: 350,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LogggedInPage()));
                                  },
                                    style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                side: const BorderSide(color: Colors.white)
                                            ),
                                        )
                                    ),
                                    child: const Text("Continue",
                                style: TextStyle(fontSize: 20),)
                                ),
                              ),
                              const SizedBox(height: 50),

                            ],
                          ),
                        ),
                      ),
                    ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 8.0,bottom: 8.0),
                        child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text("Remember Me ?",
                          style: TextStyle(color: Colors.white),),
                          value: checkedValue,
                          onChanged: (newValue){
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Flexible(
                      child:  Padding(
                        padding: EdgeInsets.only(left: 50.0,top: 8.0,bottom: 8.0),
                        child: Text('Forgot Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize:15),
                            textAlign: TextAlign.right),
                      ),
                    ),
                  ],
                ),

                Row(
                  children:  <Widget>[
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Not a member yet?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300)),
                      ),
                    ),
                    Flexible(
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: null,
                          child: const Text(
                            'Join now',
                            style: TextStyle(fontSize: 20,
                            color: Colors.orange),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 150,),
                  ],
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