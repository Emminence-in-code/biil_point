import 'package:biil_point/widgets/app_small_text.dart';
import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const SettingOption(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange.shade900.withOpacity(0.18)),
        child: Icon(
          icon,
          color: Colors.orange.shade900,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: AppSmallText(text: subTitle, alignCenter: false),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black38,
        size: 21,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
    );
  }
}
