import 'package:firstapp/views/screens/bottom_screens/cart/cart_screen.dart';
import 'package:firstapp/views/screens/bottom_screens/home/main_home_screen.dart';
import 'package:firstapp/views/screens/bottom_screens/search/search_screen.dart';
import 'package:firstapp/views/screens/bottom_screens/setting/settings_screen.dart';
import 'package:firstapp/views/screens/bottom_screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          // backgroundColor: Colors.white70,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Wishlist',
            ),
            // BottomNavigationBarItem(
            //   icon: Transform.translate(
            //     offset: Offset(0, -8),
            //     child: Stack(
            //       alignment: Alignment.center,
            //       children: [
            //         CircleAvatar(
            //           backgroundColor:
            //               _currentIndex == 2 ? Colors.red : Colors.white,
            //           radius: 2,
            //         ),
            //         Icon(
            //           Icons.shopping_cart_outlined,
            //           color: _currentIndex == 2 ? Colors.white : Colors.black,
            //         ),
            //       ],
            //     ),
            //   ),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:firstapp/ui/view/bottom_screens/cart/cart_screen.dart';
// import 'package:firstapp/ui/view/bottom_screens/home/main_home_screen.dart';
// import 'package:firstapp/ui/view/bottom_screens/search/search_screen.dart';
// import 'package:firstapp/ui/view/bottom_screens/setting/settings_screen.dart';
// import 'package:firstapp/ui/view/bottom_screens/wishlist/wishlist_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   final PersistentTabController controller =
//       PersistentTabController(initialIndex: 0);
//   int _currentIndex = 0;
//   List<Widget> _buildScreens() {
//     return [
//       HomeScreen(),
//       WishlistScreen(),
//       CartScreen(),
//       SearchScreen(),
//       SettingsScreen()
//     ];
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   List<PersistentBottomNavBarItem> _navBarItems() {
//     return [
//       PersistentBottomNavBarItem(
//         iconSize: 28,
//         icon: Icon(Icons.home_outlined),
//         activeColorPrimary: Colors.red,
//         inactiveIcon: Icon(Icons.home_outlined, color: Colors.black),
//         title: "Home",
//       ),
//       PersistentBottomNavBarItem(
//         iconSize: 28,
//         icon: Icon(Icons.favorite_border),
//         activeColorPrimary: Colors.red,
//         inactiveIcon: Icon(Icons.favorite_border, color: Colors.black),
//         title: "Wishlist",
//         textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
//       ),
//       PersistentBottomNavBarItem(
//         iconSize: 28,
//         icon: Stack(
//           alignment: Alignment.center,
//           children: [
//             CircleAvatar(
//               backgroundColor:
//                   controller.index == 2 ? Colors.red : Colors.white,
//               radius: 24,
//             ),
//             Icon(
//               Icons.shopping_cart_outlined,
//               color: controller.index == 2 ? Colors.white : Colors.black,
//             ),
//           ],
//         ),

//         activeColorPrimary: Colors.white, // Red circle when active
//         activeColorSecondary: Colors.white, // White icon when active
//         inactiveColorPrimary: Colors.white, // White circle when inactive
//         inactiveIcon: Icon(Icons.shopping_cart_outlined,
//             color: Colors.black), // Black icon when inactive
//       ),
//       PersistentBottomNavBarItem(
//         iconSize: 28,
//         icon: Icon(Icons.search),
//         activeColorPrimary: Colors.red,
//         inactiveIcon: Icon(Icons.search, color: Colors.black),
//         title: "Search",
//         textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
//       ),
//       PersistentBottomNavBarItem(
//         iconSize: 28,
//         icon: Icon(Icons.settings),
//         activeColorPrimary: Colors.red,
//         inactiveIcon: Icon(Icons.settings, color: Colors.black),
//         title: "Settings",
//         textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: controller,
//       screens: _buildScreens(),
//       items: _navBarItems(),
//       backgroundColor: Color(0xffFFFFFF), // White background for nav bar
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(0),
//         colorBehindNavBar: Colors.blueAccent,
//       ),
//       navBarStyle: NavBarStyle.style15,
//     );
//   }
// }
