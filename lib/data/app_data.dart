class Product1 {
  final String id; // Unique ID hr product ke lie
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final String category;

  Product1({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });
}

class Product2 {
  final String id; // Unique ID hr product ke lie
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final String category;

  Product2({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });
}

List<Product1> products1 = [
  Product1(
    id: 'p1',
    imageUrl: 'assets/images/shoes (4).jpg',
    name: 'Casual Sneakers',
    description: 'Lightweight sneakers for a relaxed vibe.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product1(
    id: 'p2',
    imageUrl: 'assets/images/watch (4).jpg',
    name: 'Sporty Watch',
    description: 'Durable watch for active lifestyles.',
    price: 3000.0,
    category: 'Watch',
  ),
  Product1(
    id: 'p3',
    imageUrl: 'assets/images/tshirt (3).jpg',
    name: 'Round Tee',
    description: 'Classic round-neck tee for casual wear.',
    price: 1500.0,
    category: 'Tshirt',
  ),
  Product1(
    id: 'p4',
    imageUrl: 'assets/images/perfume (5).jpg',
    name: 'Citrus Splash',
    description: 'Zesty citrus scent for an energizing feel.',
    price: 1500.0,
    category: 'Perfume',
  ),
  Product1(
    id: 'p5',
    imageUrl: 'assets/images/makeup (5).jpg',
    name: 'Skin Serum',
    description: 'Lightweight serum to refresh your skin.',
    price: 1800.0,
    category: 'Makeup',
  ),
];

List<Product2> products2 = [
  Product2(
    id: 'p6',
    imageUrl: 'assets/images/shoes (8).jpg',
    name: 'Casual Sneakers',
    description: 'Lightweight sneakers for a relaxed vibe.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product2(
    id: 'p7',
    imageUrl: 'assets/images/watch (12).jpg',
    name: 'Sporty Watch',
    description: 'Durable watch for active lifestyles.',
    price: 3000.0,
    category: 'Watch',
  ),
  Product2(
    id: 'p8',
    imageUrl: 'assets/images/tshirt (5).jpg',
    name: 'Round Tee',
    description: 'Classic round-neck tee for casual wear.',
    price: 1500.0,
    category: 'Tshirt',
  ),
  Product2(
    id: 'p9',
    imageUrl: 'assets/images/perfume (3).jpg',
    name: 'Citrus Splash',
    description: 'Zesty citrus scent for an energizing feel.',
    price: 1500.0,
    category: 'Perfume',
  ),
  Product2(
    id: 'p10',
    imageUrl: 'assets/images/makeup (4).jpg',
    name: 'Skin Serum',
    description: 'Lightweight serum to refresh your skin.',
    price: 1800.0,
    category: 'Makeup',
  ),
];

class Product {
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final String category;

  Product({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });
}

// Gridview ke lie
List<Product> products = [
  // Makeup Category
  Product(
    imageUrl: 'assets/images/makeup.jpg',
    name: 'Lip Gloss',
    description: 'Shiny lip gloss for a glam look.',
    price: 1200.0,
    category: 'Makeup',
  ),
  Product(
    imageUrl: 'assets/images/makeup (2).jpg',
    name: 'Eye Shadow',
    description: 'Smooth eye shadow palette with vibrant shades.',
    price: 3200.0,
    category: 'Makeup',
  ),
  Product(
    imageUrl: 'assets/images/makeup (3).jpg',
    name: 'Blush Powder',
    description: 'Soft blush powder for a natural glow.',
    price: 5500.0,
    category: 'Makeup',
  ),
  Product(
    imageUrl: 'assets/images/makeup (4).jpg',
    name: 'Face Primer',
    description: 'Oil-free primer to set your makeup.',
    price: 2000.0,
    category: 'Makeup',
  ),
  Product(
    imageUrl: 'assets/images/makeup (5).jpg',
    name: 'Skin Serum',
    description: 'Lightweight serum to refresh your skin.',
    price: 1800.0,
    category: 'Makeup',
  ),
  Product(
    imageUrl: 'assets/images/makeup (6).jpg',
    name: 'Highlighter Stick',
    description: 'Creamy highlighter for luminous cheeks.',
    price: 3000.0,
    category: 'Makeup',
  ),

  // Shoes Category
  Product(
    imageUrl: 'assets/images/shoes (2).jpg',
    name: 'Running Shoes',
    description: 'Breathable shoes for daily runs.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (3).jpg',
    name: 'Classic Boots',
    description: 'Stylish boots for an elegant touch.',
    price: 4500.0,
    category: 'Shoes',
  ),

  Product(
    imageUrl: 'assets/images/shoes (5).jpg',
    name: 'Sport Sandals',
    description: 'Comfortable sandals for summer outings.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (6).jpg',
    name: 'Leather Loafers',
    description: 'Premium loafers for formal occasions.',
    price: 4500.0,
    category: 'Shoes',
  ),

  Product(
    imageUrl: 'assets/images/shoes (8).jpg',
    name: 'Stylish Heels',
    description: 'Chic heels for a night out.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (9).jpg',
    name: 'Canvas Shoes',
    description: 'Casual canvas shoes for everyday wear.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (10).jpg',
    name: 'Sneaker Boots',
    description: 'Hybrid boots for sporty looks.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (11).jpg',
    name: 'Beach Flip-Flops',
    description: 'Lightweight flip-flops for the beach.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (12).jpg',
    name: 'Ballet Flats',
    description: 'Elegant flats for casual occasions.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (13).jpg',
    name: 'Track Sneakers',
    description: 'Durable sneakers for running tracks.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (14).jpg',
    name: 'Outdoor Boots',
    description: 'Sturdy boots for outdoor adventures.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (15).jpg',
    name: 'Party Heels',
    description: 'Eye-catching heels for parties.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (16).jpg',
    name: 'Travel Sandals',
    description: 'Comfortable sandals for travel.',
    price: 4500.0,
    category: 'Shoes',
  ),
  Product(
    imageUrl: 'assets/images/shoes (17).jpg',
    name: 'Fashion Sneakers',
    description: 'Trendy sneakers for street style.',
    price: 4500.0,
    category: 'Shoes',
  ),

  // Watch Category
  Product(
    imageUrl: 'assets/images/watch (2).jpg',
    name: 'Smart Watch',
    description: 'Feature-packed smart watch for all occasions.',
    price: 6000.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (3).jpg',
    name: 'Classic Dial',
    description: 'Elegant timepiece with a leather band.',
    price: 1500.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (4).jpg',
    name: 'Sporty Watch',
    description: 'Durable watch for active lifestyles.',
    price: 3000.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (5).jpg',
    name: 'Casual Watch',
    description: 'Versatile watch for everyday wear.',
    price: 2500.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (6).jpg',
    name: 'Elegant Timepiece',
    description: 'Stylish watch for formal occasions.',
    price: 4000.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (7).jpg',
    name: 'Leather Band',
    description: 'Classic watch with a leather strap.',
    price: 3500.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (8).jpg',
    name: 'Digital Timer',
    description: 'Easy-to-read digital watch.',
    price: 1200.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (9).jpg',
    name: 'Fashion Watch',
    description: 'Trendy design for fashion lovers.',
    price: 3000.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (10).jpg',
    name: 'Military Style',
    description: 'Rugged watch for outdoor activities.',
    price: 5500.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (11).jpg',
    name: 'Classic Chrono',
    description: 'Sporty watch with chronograph feature.',
    price: 4500.0,
    category: 'Watch',
  ),
  Product(
    imageUrl: 'assets/images/watch (12).jpg',
    name: 'Luxury Watch',
    description: 'High-end watch for prestigious looks.',
    price: 12000.0,
    category: 'Watch',
  ),

  Product(
    imageUrl: 'assets/images/watch.jpg',
    name: 'Minimalist Watch',
    description: 'Simple design for a clean look.',
    price: 2500.0,
    category: 'Watch',
  ),

  // Tshirt Category
  Product(
    imageUrl: 'assets/images/tshirt (2).jpg',
    name: 'V-Neck Tee',
    description: 'Comfortable v-neck tee for everyday style.',
    price: 1500.0,
    category: 'Tshirt',
  ),
  Product(
    imageUrl: 'assets/images/tshirt.jpg',
    name: 'V-Neck Tee',
    description: 'Comfortable v-neck tee for everyday style.',
    price: 1500.0,
    category: 'Tshirt',
  ),
  Product(
    imageUrl: 'assets/images/tshirt (3).jpg',
    name: 'Round Tee',
    description: 'Classic round-neck tee for casual wear.',
    price: 1500.0,
    category: 'Tshirt',
  ),
  Product(
    imageUrl: 'assets/images/tshirt (4).jpg',
    name: 'Graphic Tee',
    description: 'Trendy tee with cool graphics.',
    price: 1800.0,
    category: 'Tshirt',
  ),
  Product(
    imageUrl: 'assets/images/tshirt (5).jpg',
    name: 'Long Sleeve',
    description: 'Casual long-sleeve tee for layering.',
    price: 2000.0,
    category: 'Tshirt',
  ),
  Product(
    imageUrl: 'assets/images/tshirt (6).jpg',
    name: 'Basic Tee',
    description: 'Essential tee for a minimalist look.',
    price: 1500.0,
    category: 'Tshirt',
  ),

  // Perfume Category
  Product(
    imageUrl: 'assets/images/perfume (2).jpg',
    name: 'Rose Bloom',
    description: 'Floral scent with a hint of rose.',
    price: 1500.0,
    category: 'Perfume',
  ),
  Product(
    imageUrl: 'assets/images/perfume (3).jpg',
    name: 'Ocean Mist',
    description: 'Fresh oceanic fragrance for daily wear.',
    price: 1500.0,
    category: 'Perfume',
  ),

  Product(
    imageUrl: 'assets/images/perfume (5).jpg',
    name: 'Citrus Splash',
    description: 'Zesty citrus scent for an energizing feel.',
    price: 1500.0,
    category: 'Perfume',
  ),
  Product(
    imageUrl: 'assets/images/perfume (6).jpg',
    name: 'Amber Nights',
    description: 'Rich amber fragrance for evening events.',
    price: 2500.0,
    category: 'Perfume',
  ),
  Product(
    imageUrl: 'assets/images/perfume (7).jpg',
    name: 'Floral Breeze',
    description: 'Light floral notes for a refreshing scent.',
    price: 1800.0,
    category: 'Perfume',
  ),
];

List<Product1> wishlist1 = [];
List<Product2> wishlist2 = [];
List<Product> wishlist3 = [];
List<dynamic> combinedWishlist = [];
