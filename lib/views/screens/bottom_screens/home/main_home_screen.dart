import 'package:firstapp/views/screens/bottom_screens/home/home_body.dart';
import 'package:firstapp/views/screens/bottom_screens/home/widget/category_widget.dart';
import 'package:firstapp/views/screens/bottom_screens/home/widget/slide_picture_widget.dart';
import 'package:firstapp/views/widgets/item_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double horizontalPadding = screenWidth * 0.04;
    final double topPadding = screenHeight * 0.02;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: topPadding),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              key: const PageStorageKey("value"),
              children: [
                _Header(horizontalPadding: horizontalPadding),
                SizedBox(height: screenHeight * 0.02),
                ProductSearch(horizontalPadding: horizontalPadding),
                CategoryList(),
                SizedBox(height: screenHeight * 0.015),
                SlidePictureWidget(),
                SizedBox(height: screenHeight * 0.025),
                const PictureWidget(
                    imagePath: "assets/images/slidepicture.svg", height: 80),
                SizedBox(height: screenHeight * 0.025),
                ItemCart1(),
                SizedBox(height: screenHeight * 0.02),
                const SpecialOfferContainer(),
                SizedBox(height: screenHeight * 0.02),
                const PictureWidget(
                    imagePath: "assets/images/slide3.svg", height: 200),
                SizedBox(height: screenHeight * 0.02),
                const PictureWidget(
                    imagePath: "assets/images/slidepicture1.svg", height: 80),
                SizedBox(height: screenHeight * 0.02),
                const ItemCart2(),
                SizedBox(height: screenHeight * 0.02),
                const ArrivalSection(),
                SizedBox(height: screenHeight * 0.015),
                const SponsoredSection(),
                SizedBox(height: screenHeight * 0.015),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final double horizontalPadding;

  const _Header({required this.horizontalPadding, Key? key}) : super(key: key);

  Widget _buildIconButton(BuildContext context, VoidCallback onTap) {
    return IconButton(
      onPressed: onTap,
      icon: const Icon(Icons.sort_outlined),
      iconSize: MediaQuery.of(context).size.width * 0.06,
      color: Colors.black,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
      constraints: const BoxConstraints(),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Profile tapped");
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          "assets/images/profile_image.jpg",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.width * 0.1,
          width: MediaQuery.of(context).size.width * 0.1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIconButton(context, () {
          print("Sort icon tapped");
        }),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.08,
          child: SvgPicture.asset(
            "assets/images/logoipsum-255 1.svg",
            fit: BoxFit.cover,
          ),
        ),
        _buildProfileImage(context),
      ],
    );
  }
}
