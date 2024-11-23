import 'package:firstapp/views/screens/logiin/login_screen.dart';
import 'package:firstapp/views/widgets/clickable_widget.dart';
import 'package:firstapp/views/widgets/costom_button_widget.dart';
import 'package:firstapp/views/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          padding:
              EdgeInsets.only(left: size.width * 0.08, top: size.height * 0.1),
          child: const Text(
            'Create an\naccount',
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
                      CustomTextField(
                        hintText: "Username or Email",
                        prefixIcon: Icons.person_2,
                      ),
                      SizedBox(height: size.height * 0.03),
                      CustomTextField(
                        hintText: "Password", // Corrected typo
                        prefixIcon: Icons.lock,
                        isPassword: true,
                      ),
                      SizedBox(height: size.height * 0.03),
                      CustomTextField(
                        hintText: "Confirm Password", // Corrected typo
                        prefixIcon: Icons.lock,
                        isPassword: true,
                      ),
                      SizedBox(height: size.height * 0.02),
                      ClickableText(
                        fontWeight: FontWeight.w400,
                        mainText: "By clicking the ",
                        clickableText: "Register",
                        onTap: () {},
                        againtext: ' button, you agree',
                      ),
                      Text(
                        ' to the public offer.',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff676767)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                CustomButton(
                  width: size.width * 0.8,
                  color: Color(0xffF83758),
                  height: size.height * 0.07,
                  text: "Create Account",
                  onPressed: () {
                    print("Create Account button clicked");
                  },
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  '- OR Continue with -',
                  style: TextStyle(
                    fontSize: 13,
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
                  underlineClickableText: true,
                  mainText: "I Already Have an Account ",
                  clickableText: "Login",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  againtext: "",
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class SocialCircleButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialCircleButton({
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
          border: Border.all(
            color: Color(0xffF83758),
            width: 1,
          ),
        ),
        child: Center(child: Image.asset(imagePath)),
      ),
    );
  }
}
