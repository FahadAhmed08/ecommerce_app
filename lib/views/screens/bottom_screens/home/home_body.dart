import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductSearch extends StatelessWidget {
  final double horizontalPadding;

  const ProductSearch({
    super.key,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchField(),
        _buildActionBar(context),
      ],
    );
  }

  Widget _buildSearchField() {
    return const TextField(
      cursorHeight: 20,
      cursorColor: Color(0xffBBBBBB),
      decoration: InputDecoration(
        hintText: 'Search any Product..',
        hintStyle: TextStyle(color: Color(0xffBBBBBB)),
        prefixIcon: Icon(Icons.search, color: Color(0xffBBBBBB)),
        suffixIcon: Icon(Icons.mic, color: Color(0xffBBBBBB)),
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
      ),
      style: TextStyle(height: 1.8),
    );
  }

  Widget _buildActionBar(BuildContext context) {
    final double fontSize = MediaQuery.of(context).size.width * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'All Featured',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              _buildActionButton('Sort', Icons.compare_arrows, fontSize),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              _buildActionButton('Filter', Icons.filter_alt_outlined, fontSize),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon, double fontSize) {
    return GestureDetector(
      child: Container(
        height: fontSize * 1.5,
        padding: EdgeInsets.symmetric(horizontal: fontSize * 0.6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(fontSize * 0.6),
          border: Border.all(color: Colors.grey.shade300),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: TextStyle(fontSize: fontSize * 0.8)),
            SizedBox(width: fontSize * 0.3),
            Icon(icon, size: fontSize),
          ],
        ),
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  final String imagePath;
  final double height;

  const PictureWidget(
      {super.key, required this.imagePath, required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Picture tapped");
      },
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: SvgPicture.asset(imagePath, fit: BoxFit.fill),
      ),
    );
  }
}

class SpecialOfferContainer extends StatelessWidget {
  const SpecialOfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        print("Special Offer tapped");
      },
      child: Container(
        height: screenWidth * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenWidth * 0.2,
                    width: screenWidth * 0.2,
                    child: Image.asset(
                      "assets/images/circle.png",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.08),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Text(
                        "Special Offers",
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Container(
                        decoration: BoxDecoration(color: Color(0xffb00000026)),
                        height: screenWidth * 0.04,
                        width: screenWidth * 0.04,
                        child: Image.asset("assets/images/circlee1.png",
                            fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenWidth * 0.005),
                Text(
                  "We make sure you get the\noffer you need at best prices",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: screenWidth * 0.03,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ArrivalSection extends StatelessWidget {
  const ArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        print("New Arrivals tapped");
      },
      child: Container(
        color: const Color(0xffFFFFFF),
        height: screenHeight * 0.35,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.25,
              width: double.infinity,
              child: Image.asset(
                fit: BoxFit.fill,
                "assets/images/slide1.jpg",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Arrivals",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Summer’s 25 Collections",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.01, right: screenWidth * 0.02),
                    child: Image.asset("assets/images/Component 54.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SponsoredSection extends StatelessWidget {
  const SponsoredSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        print("Sponsored Section tapped");
      },
      child: Container(
        color: const Color(0xffFFFFFF),
        height: screenHeight * 0.5,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Text(
                "Sponsored",
                style: TextStyle(
                    fontSize: screenWidth * 0.055, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: SizedBox(
                height: screenHeight * 0.4,
                width: double.infinity,
                child: Image.asset(
                  fit: BoxFit.fill,
                  "assets/images/last.png",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.01, left: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "up to 50% Off",
                    style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w700),
                  ),
                  const Icon(Icons.arrow_right_sharp)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Content extends StatefulWidget {
  final String productId;

  const Content({super.key, required this.productId});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  double _currentRating = 0.0;

  @override
  void initState() {
    super.initState();
    _loadRating();
  }

  Future<void> _loadRating() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentRating = prefs.getDouble('rating_${widget.productId}') ?? 0.0;
    });
  }

  Future<void> _saveRating(double rating) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('rating_${widget.productId}', rating);
  }

  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * 0.038;

    return Row(
      children: [
        RatingBar.builder(
          initialRating: _currentRating,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: iconSize,
          itemPadding: EdgeInsets.symmetric(horizontal: iconSize * 0.05),
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (rating) {
            setState(() {
              _currentRating = rating;
            });
            _saveRating(rating);
          },
        ),
        Text(' $_currentRating'),
      ],
    );
  }
}
