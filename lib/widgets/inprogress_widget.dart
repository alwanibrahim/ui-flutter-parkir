import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ft_apk_parkir/constants/color.dart';
import 'package:ft_apk_parkir/widgets/container_widget.dart';
import 'package:ft_apk_parkir/widgets/widget_button.dart';
import 'package:gap/gap.dart';

class InprogressWidget extends StatelessWidget {
  const InprogressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'In Progress Parking to',
      child: Container(

        width: double.infinity,
        height: 92,
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(.4),
              blurRadius: 24,
              offset: Offset(0, 10)
            )
          ],
          color: Color(0xFF3F46F9),
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage('assets/images/bg_in_progress.png',),fit: BoxFit.cover)
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/svgs/grid.svg',width: 26,height: 26,),
            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(24),
                Text('Angga Tower',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16,color: Colors.white),),
                Gap(6),
                Text('Lot 193MB',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
              ],
            ),
            Spacer(),
            WidgetButton(text: 'Open Maps', onPressed: (){

            })
          ],
        ),
      ),
    );
  }
}
