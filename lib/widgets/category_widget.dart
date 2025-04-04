import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ft_apk_parkir/constants/color.dart';
import 'package:ft_apk_parkir/models/category.dart';
import 'package:ft_apk_parkir/widgets/container_widget.dart';
import 'package:gap/gap.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Browse \nCategories',
      actionTeks: 'View All',
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            separatorBuilder: (context, index) =>
                SizedBox(width: 16), // Jarak antar item
            itemBuilder: (context, index) {
              return CategoryItems(
                category: category[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

class CategoryItems extends StatelessWidget {
  final Categoryy category;
  const CategoryItems({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 87,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(8),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primary
            ),
            child: SvgPicture.asset(category.icon,fit: BoxFit.contain,width: 26,height: 26,alignment: Alignment.center,),
          ),
          Gap(8),
          Text(category.judul,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)
        ],
      ),
    );
  }


}
