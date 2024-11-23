import 'package:firstapp/data/app_data.dart';
import 'package:firstapp/views/screens/bottom_screens/home/home_body.dart';
import 'package:flutter/material.dart';

class ProductCard1 extends StatefulWidget {
  final Product1 data;

  const ProductCard1({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductCard1> createState() => _ProductCard1State();
}

class _ProductCard1State extends State<ProductCard1> {
  @override
  Widget build(BuildContext context) {
    bool isLike = wishlist1.contains(widget.data);
    double cardWidth = MediaQuery.of(context).size.width * 0.43;

    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: cardWidth,
        height: cardWidth * 2.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: cardWidth * 0.9,
              width: cardWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(widget.data.imageUrl, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.name,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  SizedBox(height: 3),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: cardWidth * 0.8),
                    child: Text(
                      widget.data.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.data.price} PKR',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          Content(
                              productId: widget.data.id), //  product ID dali he
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          isLike
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: isLike ? Colors.red : Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          setState(() {
                            if (isLike) {
                              wishlist1.remove(widget.data);
                            } else {
                              wishlist1.add(widget.data);
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
      ),
    );
  }
}

class ProductCard2 extends StatefulWidget {
  final Product2 data;

  const ProductCard2({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductCard2> createState() => _ProductCard2State();
}

class _ProductCard2State extends State<ProductCard2> {
  @override
  Widget build(BuildContext context) {
    bool isLike = wishlist2.contains(widget.data);
    double cardWidth = MediaQuery.of(context).size.width * 0.43;

    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: cardWidth,
        height: cardWidth * 2.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: cardWidth * 0.9,
              width: cardWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(widget.data.imageUrl, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.name,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  SizedBox(height: 3),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: cardWidth * 0.8),
                    child: Text(
                      widget.data.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.data.price} PKR',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          Content(
                              productId: widget.data.id), //  product ID dali he
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          isLike
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: isLike ? Colors.red : Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          setState(() {
                            if (isLike) {
                              wishlist2.remove(widget.data);
                            } else {
                              wishlist2.add(widget.data);
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
      ),
    );
  }
}

class ItemCart1 extends StatelessWidget {
  const ItemCart1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products1.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("Product tapped");
            },
            child: ProductCard1(data: products1[index]),
          );
        },
      ),
    );
  }
}

class ItemCart2 extends StatelessWidget {
  const ItemCart2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products2.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("Product tapped");
            },
            child: ProductCard2(data: products2[index]),
          );
        },
      ),
    );
  }
}
