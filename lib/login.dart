import 'package:ecom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  // final _resetEmail = TextEditingController();
  final _password = TextEditingController();

  // bool isResetLoading = false;
  // bool isLoginLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Center(
                      child: Text(
                        "Welcome ",
                        style: GoogleFonts.poppins(fontSize: 30),
                      ),
                    ))),
            SizedBox(height: 30),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Center(
                      child: Text(
                        "Sign in to your account",
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                    ))),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width, // +#
              // child: Image.asset(
              //   'assets/images/login.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    controller: _email,
                    //keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        label: Text(
                          'Email Id',
                          style: GoogleFonts.poppins(),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    //keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                        ),
                        label: Text(
                          'Password',
                          style: GoogleFonts.poppins(),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'value is empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          //print('Email: $_email, Password: $_password');
                          if (_password.text == _email.text) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationScreen()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Set the background color to yellow
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
