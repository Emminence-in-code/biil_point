import 'package:biil_point/pages/home_page.dart';
import 'package:biil_point/pages/loading_page.dart';
import 'package:biil_point/pages/profile_page.dart';
import 'package:biil_point/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import '../pages/coming_soon_page.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  bool showLabel = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 60,
        child: currentIndex == 0
            ? const HomePage()
            : currentIndex == 1
                ? const LoadingPage(child: ServicePage())
                : currentIndex == 2
                    ? const WalletPage()
                    : const ProfilePage(),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(color: Colors.black.withOpacity(0.5))),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     spreadRadius: 1,
            //     blurRadius: 10,
            //   ),
            // ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(0, 'Home', Icons.home_max_outlined),
                buildNavItem(1, 'Services', Icons.wallet_travel_outlined),
                buildNavItem(2, 'Wallet', Icons.wallet_rounded),
                buildNavItem(3, 'Profile', Icons.person),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildNavItem(int index, String label, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
          showLabel = true;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
            color: currentIndex == index ? Colors.orange.shade900 : Colors.grey,
          ),
          const SizedBox(
            width: 5,
          ),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            visible: showLabel && currentIndex == index,
            child: AnimatedSlide(
              offset: showLabel && currentIndex == index
                  ? const Offset(0, 0)
                  : const Offset(-30, 0),
              duration: const Duration(milliseconds: 100),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: currentIndex == index
                      ? Colors.orange.shade900
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
