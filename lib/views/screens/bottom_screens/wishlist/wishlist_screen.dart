import 'package:firstapp/data/app_data.dart';
import 'package:firstapp/views/screens/bottom_screens/home/home_body.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<dynamic> combinedWishlist = [];

  @override
  void initState() {
    super.initState();
    updateCombinedWishlist();
  }

  void updateCombinedWishlist() {
    setState(() {
      combinedWishlist = [
        ...wishlist1,
        ...wishlist2,
      ];
    });
    print("Combined Wishlist: $combinedWishlist");
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    int crossAxisCount = screenSize.width > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Wishlist"),
      ),
      body: combinedWishlist.isEmpty
          ? const Center(child: Text("No items in your wishlist"))
          : GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: combinedWishlist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: screenSize.width > 600 ? 340 : 280,
              ),
              itemBuilder: (context, index) {
                final product = combinedWishlist[index];

                bool isFavorite =
                    wishlist1.contains(product) || wishlist2.contains(product);

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          product.imageUrl,
                          fit: BoxFit.cover,
                          height: 140,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                product.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenSize.width > 600 ? 18 : 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 40),
                              child: Text(
                                product.description,
                                style: const TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${product.price} PKR',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            screenSize.width > 600 ? 18 : 15,
                                      ),
                                    ),
                                    // Pass product ID to Content
                                    Content(productId: product.id),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color:
                                        isFavorite ? Colors.red : Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (isFavorite) {
                                        if (wishlist1.contains(product)) {
                                          wishlist1.remove(product);
                                        } else {
                                          wishlist2.remove(product);
                                        }
                                      } else {
                                        wishlist1.add(product);
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
