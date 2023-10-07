import 'package:e_commerce_flutter/views/shared/app_style.dart';
import 'package:e_commerce_flutter/views/shared/bottom_nav_widget.dart';
import 'package:e_commerce_flutter/views/ui/cart_page.dart';
import 'package:e_commerce_flutter/views/ui/home_page.dart';
import 'package:e_commerce_flutter/views/ui/profile_page.dart';
import 'package:e_commerce_flutter/views/ui/search_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 2;

    /// 18:58
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.home,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.search,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.add,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.shopping_cart,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
