import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleprac/core/const/colors.dart';
import 'package:teleprac/core/const/decoration.dart';
import 'package:teleprac/core/const/texts.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.mainLinarGradient,
      ),
      width: AppDecoration().screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                CupertinoIcons.back,
                color: AppColors.black,
                size: AppDecoration().screenWidth * 0.09,
              ),
            ),
            Text(
              AppTexts.labs,
              style: TextStyle(
                fontSize: AppDecoration().screenWidth * 0.07,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontFamily: AppDecoration.cairo,
                height: 2.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
