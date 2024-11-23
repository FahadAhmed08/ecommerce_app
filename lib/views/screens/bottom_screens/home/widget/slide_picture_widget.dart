import 'package:flutter/material.dart';

class SlidePictureWidget extends StatefulWidget {
  const SlidePictureWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SlidePictureWidgetState createState() => _SlidePictureWidgetState();
}

class _SlidePictureWidgetState extends State<SlidePictureWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: PageView(
              controller: _pageController,
              children: [
                GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Image.asset(
                    "assets/images/slide1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Image.asset(
                    "assets/images/slide3.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Image.asset(
                    "assets/images/slide2.jpg",
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              width: _currentPage == index ? 11.0 : 8.0,
              height: _currentPage == index ? 11.0 : 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? const Color.fromARGB(213, 219, 147, 14)
                    : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}

Widget _buildPicture() {
  return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        "assets/images/slidepicture.png",
      ));
}
