import 'package:flutter/material.dart';
import 'package:ft_apk_parkir/constants/color.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const WidgetButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20)
      ),
      onPressed: onPressed,
      child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
    );
  }
}
