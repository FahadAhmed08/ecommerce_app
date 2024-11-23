import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
        ),
        color: Color(0xff181725),
      ),
      actions: [
        IconButton(
          style: IconButton.styleFrom(backgroundColor: Color(0xffF2F2F2)),
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    ));
  }
}
