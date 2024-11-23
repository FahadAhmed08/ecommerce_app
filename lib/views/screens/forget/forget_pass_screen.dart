import 'package:firstapp/views/widgets/costom_button_widget.dart';
import 'package:firstapp/views/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Get the size of the screen

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: size.width * 0.08,
                top: size.height * 0.1), // Responsive padding
            child: Text(
              'Forget\nPassword?',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: size.width * 0.1, // Responsive font size
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: size.height * 0.25), // Responsive padding
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.08), // Responsive margin
                    child: Column(
                      children: [
                        const CustomTextField(
                          hintText: 'Enter your email address',
                          prefixIcon: Icons.message_outlined,
                        ),
                        SizedBox(
                            height: size.height * 0.03), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 21),
                              child: Text(
                                "*",
                                style: TextStyle(color: Color(0xffF83758)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                "We will send you a message to set or reset \nyour new password",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff676767),
                                  fontSize:
                                      size.width * 0.04, // Responsive font size
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.05), // Responsive spacing
                  CustomButton(
                    width: size.width * 0.8, // Responsive width
                    color: Color(0xffF83758),
                    height: size.height * 0.07, // Responsive height
                    text: "Submit",
                    onPressed: () {
                      print("Submit button clicked");
                    },
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
