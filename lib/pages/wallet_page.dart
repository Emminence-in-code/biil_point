import 'package:biil_point/pages/notifications_page.dart';
import 'package:biil_point/pages/top_up_page.dart';
import 'package:biil_point/widgets/app_butttons.dart';
import 'package:biil_point/widgets/app_large_text.dart';
import 'package:biil_point/widgets/app_small_text.dart';
import 'package:biil_point/widgets/custom_amount_container.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const AppLargeText(text: 'My Wallet'),
            const SizedBox(
              height: 5,
            ),
            const AppSmallText(
                text:
                    'Your central hub for managing your funds and tracking your wallet history.',
                alignCenter: false),
            const SizedBox(
              height: 25,
            ),
            const CustomBalanceBox(
                headingText: 'Wallet Balance', isTopUp: true),
            const SizedBox(height: 20),
            AppButton(
                onTap: () {},
                // => Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const TopUpPage())),
                text: 'Fund Wallet',
                textColor: Colors.white,
                backgroundColor: Colors.orange.shade700),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Wallet Transactions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.orange.shade900),
                )
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child:
                              Lottie.asset('assets/lottie.json', height: 110)),
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
          ],
        ),
      ),
    );
  }
}
