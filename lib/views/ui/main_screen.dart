import 'package:e_commerce_flutter/controllers/main_screen_provider.dart';
import 'package:e_commerce_flutter/views/shared/bottom_nav_bar.dart';
import 'package:e_commerce_flutter/views/ui/cart_page.dart';
import 'package:e_commerce_flutter/views/ui/home_page.dart';
import 'package:e_commerce_flutter/views/ui/profile_page.dart';
import 'package:e_commerce_flutter/views/ui/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
