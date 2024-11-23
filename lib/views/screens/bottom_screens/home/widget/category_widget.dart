import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    category['image']!,
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  category['label']!,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<Map<String, String>> categories = [
  {'image': 'assets/images/circle (2).jpg', 'label': 'Shoes'},
  {'image': 'assets/images/circle (3).jpg', 'label': 'Makeup'},
  {'image': 'assets/images/circle (5).jpg', 'label': 'Perfumes'},
  {'image': 'assets/images/circle (4).jpg', 'label': 'Watches'},
  // {'image': 'assets/images/circle.jpg', 'label': 'Tshirts'},
  {'image': 'assets/images/circle (6).jpg', 'label': 'Dresses'},
];
