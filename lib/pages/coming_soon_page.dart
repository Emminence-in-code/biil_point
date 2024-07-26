import 'package:biil_point/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Center(
              child: AppLargeText(
                text: 'Coming',
                color: Colors.orange.shade900,
              ),
            ),
            const Text('Soon'),
            const SizedBox(
              height: 20,
            ),
            const AppSmallText(
                text:
                    'Stay tuned and watch out for more features and services, please contact our development team for more information',
                alignCenter: true)
          ],
        ),
      ),
    );
  }
}
