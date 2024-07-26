import 'package:biil_point/widgets/app_large_text.dart';
import 'package:biil_point/widgets/app_small_text.dart';
import 'package:biil_point/widgets/settings_option.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
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
            const SizedBox(height: 10),
            const AppLargeText(text: 'Profile'),
            const AppSmallText(
                text:
                    'Your Bill wave profile is your personal gateway to managing your account information',
                alignCenter: false),
            const SizedBox(height: 20),
            Row(
              children: [
                const CircleAvatar(radius: 40),
                const SizedBox(width: 10),
                Container(
                  height: 47,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade900.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(27)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.linked_camera_outlined,
                        size: 18,
                        color: Colors.orange.shade900,
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Upload Photo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.orange.shade900),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Ejikeme',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const AppSmallText(
                text: 'ejikemechidiebele@gmail.com', alignCenter: false),
            const SizedBox(height: 20),
            const Text('General settings',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black26)),
            const SizedBox(height: 5),
            SizedBox(
              height: 370,
              child: ListView(
                children: const [
                  SettingOption(
                      icon: Icons.person,
                      title: 'Personal Information',
                      subTitle: 'Edit your information'),
                  SettingOption(
                      icon: Icons.settings,
                      title: 'Settings',
                      subTitle: 'Account, notification'),
                  SettingOption(
                      icon: Icons.people_alt_sharp,
                      title: 'My Referral',
                      subTitle: 'Coming soon'),
                  SettingOption(
                      icon: Icons.visibility,
                      title: 'Dark Mode',
                      subTitle: 'Coming soon'),
                  SettingOption(
                      icon: Icons.contact_support_rounded,
                      title: 'Help & Support',
                      subTitle: 'Coming soon'),
                  SettingOption(
                      icon: Icons.policy_rounded,
                      title: 'Legal',
                      subTitle: 'Help, Privacy & Security, Legal'),
                ],
                //  Column(children: [

                // ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
