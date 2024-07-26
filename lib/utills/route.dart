import 'package:biil_point/pages/home_page.dart';
import 'package:biil_point/pages/loading_page.dart';
import 'package:biil_point/pages/notifications_page.dart';
import 'package:biil_point/pages/pages.dart';
import 'package:biil_point/pages/coming_soon_page.dart';
import 'package:biil_point/pages/sign_in_page.dart';
import 'package:biil_point/pages/sign_up_page.dart';
import 'package:biil_point/pages/top_up_page.dart';
import 'package:go_router/go_router.dart';

class RouterClass {
  final router = GoRouter(
    
    routes: [
    GoRoute(
      path: '/welcomescreen',
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: '/loadingPage',
      builder: (context, state) => const LoadingPage(
        child: ServicePage(),
      ),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/topuppage',
      builder: (context, state) => const TopUpPage(),
    ),
    GoRoute(
      path: '/notification',
      builder: (context, state) => const NotificationPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpPage(),
    ),
  ]);
}
