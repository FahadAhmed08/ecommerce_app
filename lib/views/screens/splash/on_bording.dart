import 'package:firstapp/views/widgets/onboard_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              OnboardWidget(
                imageUrl: "assets/images/onboard_1.svg",
                heading: "Choose Products",
                description:
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                controller: controller,
                currentPage: currentPage,
                isFirstPage: true,
              ),
              OnboardWidget(
                imageUrl: "assets/images/onboard_2.svg",
                heading: "Make Payment",
                description:
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                controller: controller,
                currentPage: currentPage,
              ),
              OnboardWidget(
                imageUrl: "assets/images/onboard_3.svg",
                heading: "Get Your Order",
                description:
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                controller: controller,
                currentPage: currentPage,
                isLastPage: true,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: PageIndicator(currentValue: currentPage),
            ),
          ),
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, this.currentValue = 0});
  final int currentValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 100),
            height: size.height * 0.012,
            width: index == currentValue ? size.width * 0.1 : size.width * 0.03,
            decoration: BoxDecoration(
              color: index == currentValue
                  ? Color.fromARGB(255, 20, 27, 45)
                  : const Color.fromARGB(255, 179, 178, 178),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}
