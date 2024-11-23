import 'package:firstapp/views/screens/create/sign__up_screen.dart';
import 'package:firstapp/views/screens/forget/forget_pass_screen.dart';
import 'package:firstapp/views/widgets/clickable_widget.dart';
import 'package:firstapp/views/widgets/costom_button_widget.dart';
import 'package:firstapp/views/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: size.width * 0.08,
              top: size.height * 0.1,
            ),
            child: const Text(
              'Welcome\nBack!',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 38,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: size.height * 0.25),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                    child: Column(
                      children: [
                        const CustomTextField(
                          hintText: "Username or Email",
                          prefixIcon: Icons.person_2,
                        ),
                        SizedBox(height: size.height * 0.03),
                        const CustomTextField(
                          hintText: "Password",
                          prefixIcon: Icons.lock,
                          isPassword: true,
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClickableText(
                              fontWeight: FontWeight.w400,
                              mainText: "",
                              clickableText: "Forget Password?",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgetPassword(),
                                  ),
                                );
                              },
                              againtext: '',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.08),
                  CustomButton(
                    width: size.width * 0.82,
                    color: Color(0xffF83758),
                    height: size.height * 0.07,
                    text: "Login",
                    onPressed: () {
                      print("Login button clicked");
                    },
                  ),
                  SizedBox(height: size.height * 0.05),
                  Text(
                    '- OR Continue with -',
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff575757),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCircleButton(
                        imagePath: "assets/images/google.png",
                        onPressed: () {
                          print('Google clicked');
                        },
                      ),
                      SizedBox(width: size.width * 0.03),
                      SocialCircleButton(
                        imagePath: "assets/images/apple.png",
                        onPressed: () {
                          print('Apple clicked');
                        },
                      ),
                      SizedBox(width: size.width * 0.03),
                      SocialCircleButton(
                        imagePath: "assets/images/facebook.png",
                        onPressed: () {
                          print('Facebook clicked');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  ClickableText(
                    fontWeight: FontWeight.w600,
                    underlineClickableText: true,
                    mainText: "Create an Account ",
                    clickableText: "Sign up",
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    againtext: "",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
