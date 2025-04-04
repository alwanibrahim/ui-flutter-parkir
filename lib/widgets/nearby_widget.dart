import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ft_apk_parkir/constants/color.dart';
import 'package:ft_apk_parkir/models/park.dart';
import 'package:ft_apk_parkir/widgets/container_widget.dart';
import 'package:gap/gap.dart';

class NearbyWidget extends StatelessWidget {
  const NearbyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Nearby \nParking Spots',
      actionTeks: 'View All',
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: parks.length,
            separatorBuilder: (context, index) =>
                SizedBox(width: 16), // Jarak antar item
            itemBuilder: (context, index) {
              return NearbyParkingItems(park: parks[index],);
            },
          ),
        ),
      ),
    );
  }
}

class NearbyParkingItems extends StatelessWidget {
  final Park park;
  const NearbyParkingItems({super.key,required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 202,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          Gap(10),
          headerContent(),
          Gap(8),
          bodyContent()
        ],
      ),
    );
  }

  Row bodyContent() {
    return Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/routing.svg',
              width: 16,
              height: 16,
              color: Color(0xFF9F9FB5),
            ),
            Text(
              park.distance,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF9F9FB5)),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/svgs/dollar.svg',
              width: 16,
              height: 16,
              color: Color(0xFF9F9FB5),
            ),
            Text(
              park.price,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF9F9FB5)),
            ),
          ],
        );
  }

  Text headerContent() {
    return Text(
          park.title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primary),
        );
  }

  Container image() {
    return Container(
          alignment: Alignment.topLeft,
          height: 100,
          width: 170,
          padding: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage(park.image))),
          child: (park.type != null)?Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  color: (park.type == ParkType.discount)?Color(0xFFF93F6C):Color(0xFF3F46F9),
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                park.typeTeks?? '',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                    color: Colors.white),
              )):null,
        );
  }
}
