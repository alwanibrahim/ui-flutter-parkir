import 'package:flutter/material.dart';
import 'package:ft_apk_parkir/widgets/hero_widget.dart';
import 'package:ft_apk_parkir/widgets/inprogress_widget.dart';
import 'package:ft_apk_parkir/widgets/nearby_widget.dart';
import 'package:gap/gap.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Gap(20),
            InprogressWidget(),
            Gap(20),
            NearbyWidget()
          ],
        ),
      ) ,
    );
  }
}
