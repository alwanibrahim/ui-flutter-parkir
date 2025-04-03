import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ft_apk_parkir/constants/color.dart';
import 'package:gap/gap.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [content(), image(), search()],
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(color: AppColors.primary),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 55, bottom: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/angga.png'))),
                ),
                Gap(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Howdy',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Angga Risky',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Gap(20),
            Text(
              'Get Your \nSecure Park',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  height: 1,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

Widget image() {
  return Positioned(
      right: 0,
      bottom: 54,
      width: 200,
      child: Image.asset(
        'assets/images/hero.png',
        fit: BoxFit.contain,
      ));
}

Widget search() {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          hintText: 'Search by name or city area',
          filled: true,
          fillColor: Colors.white,
          disabledBorder: border(),
          focusedBorder: border(),
          enabledBorder: border(),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          suffixIcon: Align(heightFactor:1,widthFactor: 1,child:  SvgPicture.asset('assets/svgs/search.svg'))
        ),
      ),
    ),
  );
}

OutlineInputBorder border() {
  return OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none
        );
}
