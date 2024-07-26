import 'package:biil_point/widgets/app_large_text.dart';
import 'package:biil_point/widgets/app_small_text.dart';
import 'package:biil_point/widgets/custom_bottomNavBar.dart';
import 'package:biil_point/widgets/notification_icon.dart';
import 'package:biil_point/widgets/quck_action_box.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/custom_amount_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> services = {
      'Airtime': Icon(
        Icons.phone_outlined,
        color: Colors.orange.shade900,
      ),
      'Data': Icon(
        Icons.wifi_outlined,
        color: Colors.orange.shade900,
      ),
      'Electricity': Icon(
        Icons.tv_rounded,
        color: Colors.orange.shade900,
      ),
      'More': Icon(
        Icons.more_horiz_rounded,
        color: Colors.orange.shade900,
      )
    };
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                  ),
                  GestureDetector(child: const NotificationIcon())
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Hello, Ejikeme 👋',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  AppSmallText(
                    text: 'What bill would you like to settle today?',
                    alignCenter: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomBalanceBox(
                headingText: 'Total Balance',
                isTopUp: false,
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Quick Actions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: List.generate(4, (index) {
                  return Row(
                    children: [
                      QuickActionBox(
                        icon: services.values.elementAt(index),
                        description: services.keys.elementAt(index),
                      ),
                      const SizedBox(
                        width: 7,
                      )
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recent Activity'),
                  GestureDetector(
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 160,
                child: ListView(children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Lottie.asset('assets/lottie.json',
                                height: 110)),
                        const SizedBox(
                          height: 5,
                        ),
                        const AppSmallText(
                            text:
                                'Looks like there is no recent activity to show here, Get started by making a transaction',
                            alignCenter: true)
                      ],
                    ),
                  ),
                ]),
              )
            ]),
      ),
    );
  }
}
