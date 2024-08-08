import 'package:flutter/material.dart';
import 'landing.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.01),

              // logo
              Image.asset(
                "lib/images/logo.png",
                height: screenHeight * 0.16,
              ),
              SizedBox(height: screenHeight * 0.08),

              // welcome back, you've been missed!
              Text(
                'Welcome Freshers!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: screenWidth * 0.02,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              SizedBox(height: screenHeight * 0.02),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: screenHeight * 0.02),

              // forgot password?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.032),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.04),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                  );
                },
                child: Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.34,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.05),

              // or continue with
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.032),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: screenWidth * 0.00082,
                        color: Colors.grey[700],
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: screenWidth * 0.00082,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.06),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  const SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: screenWidth * 0.02),

                  // apple button
                  const SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              // SizedBox(height: screenHeight * 0.06),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?  ',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.007),
            ],
          ),
        ),
      ),
    );
  }
}