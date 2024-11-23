import 'package:firstapp/views/screens/get_started_screen.dart';
import 'package:firstapp/views/screens/logiin/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardWidget extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String description;
  final PageController controller;
  final bool isFirstPage;
  final int currentPage;
  final bool isLastPage;

  const OnboardWidget({
    super.key,
    required this.imageUrl,
    required this.heading,
    required this.description,
    required this.controller,
    this.isFirstPage = false,
    this.isLastPage = false,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.02, left: size.width * 0.04),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "${currentPage + 1}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "/3",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03, right: size.width * 0.04),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.15),
          Container(
            height: size.height * 0.4,
            width: size.width * 0.8,
            child: SvgPicture.asset(
              imageUrl,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            heading,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffA8A8A9),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!isFirstPage)
                  GestureDetector(
                    onTap: () {
                      controller.previousPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Prev",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC4C4C4),
                      ),
                    ),
                  ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (isLastPage) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetStart()),
                      );
                    } else {
                      controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    isLastPage ? "Get Started" : "Next",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF83758),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
