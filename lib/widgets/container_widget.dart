import 'package:flutter/material.dart';
import 'package:ft_apk_parkir/constants/color.dart';
import 'package:gap/gap.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.child, required this.title, this.actionTeks,this.onTap});
  final String title;
  final Widget child;
  final VoidCallback? onTap;
  final String? actionTeks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [header(), Gap(16), child],
    );
  }

  Widget header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          ),
          Spacer(),
          if(actionTeks != null && onTap != null)
          ElevatedButton(
            onPressed: onTap,
            style: ButtonStyle(
            ),
            child: Text(
              actionTeks!,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
