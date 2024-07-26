import 'package:biil_point/pages/home_page.dart';
import 'package:biil_point/pages/notifications_page.dart';
import 'package:biil_point/pages/pages.dart';
import 'package:biil_point/pages/services_page.dart';
import 'package:biil_point/pages/top_up_page.dart';
import 'package:biil_point/utills/route.dart';
import 'package:biil_point/widgets/custom_bottomNavBar.dart';
import 'package:flutter/material.dart';

void main() {
  final router0 = RouterClass();
  final router = router0.router;
  runApp(MaterialApp.router(
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    debugShowCheckedModeBanner: false,
    title: 'Bill Wave',
    builder: (context, child) => const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final router = RouterClass();
  @override
  void initState() {
    super.initState();
    router.router.go('/signin');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ServicePage());
  }
}
