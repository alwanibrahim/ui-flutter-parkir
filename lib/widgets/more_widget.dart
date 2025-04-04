import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ft_apk_parkir/models/park.dart';
import 'package:ft_apk_parkir/widgets/container_widget.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Fresh Lotes\nMore Discounts',
      actionTeks: 'View All',
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: mores.length,
          separatorBuilder: (context, index) =>
              SizedBox(height: 16), // Jarak antar item
          itemBuilder: (context, index) {
            return MoreItems(
              mores: mores[index],
            );
          },
        ),
      ),
    );
  }
}

class MoreItems extends StatelessWidget {
  final Park mores;
  const MoreItems({super.key, required this.mores});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 112,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(
                  mores.image,
                ))),
          ),
          Gap(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mores.title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Gap(8),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/routing.svg',
                    width: 16,
                    height: 16,
                    color: Color(0xFF9F9FB5),
                  ),
                  Gap(4),
                  Text(
                    mores.distance,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xFF9F9FB5),
                    ),
                  ),
                  Gap(10),
                  SvgPicture.asset(
                    'assets/svgs/dollar.svg',
                    width: 16,
                    height: 16,
                    color: Color(0xFF9F9FB5),
                  ),
                  Gap(4),
                  Text(
                    mores.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xFF9F9FB5),
                    ),
                  ),
                ],
              ),
              Gap(8),
              Row(
                children: [
                  RatingStars(
                    valueLabelVisibility: false,
                    starSize: 18,
                    starSpacing: 2,
                    starColor: Colors.orangeAccent,
                    value: mores.ratingStar ?? 0,
                    starBuilder: (index, color) {
                      return SvgPicture.asset('assets/svgs/star.svg',colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),);
                    },
                  ),
                  Gap(2),
                  Text(NumberFormat("(#.###)").format(mores.ratingCount ?? 0),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
