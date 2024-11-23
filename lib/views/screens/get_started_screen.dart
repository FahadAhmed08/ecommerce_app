import 'package:firstapp/views/widgets/bottom_nevigation_bar.dart';
import 'package:firstapp/views/widgets/costom_button_widget.dart';
import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(
          "assets/images/unsplash_fouVDmGXoPI.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "You want",
              style: TextStyle(
                  fontSize: 38,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF)),
            ),
            const Text(
              "Authentic,here",
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF)),
            ),
            const Text(
              "you go!",
              style: TextStyle(
                  fontSize: 38,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.004),
            const Text(
              "Find it here, buy it now!",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF2F2F2)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.052),
            CustomButton(
              width: 285,
              height: 60,
              text: 'Get Started',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigation()),
                );
              },
              color: Color(0xffF83758),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          ],
        ),
      ],
    ));
  }
}
