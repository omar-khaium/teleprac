import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleprac/controller/home/dashboard/my_patients/patient_profile/medical_history_controller.dart';
import 'package:teleprac/core/const/colors.dart';
import 'package:teleprac/core/const/decoration.dart';
import 'package:teleprac/core/const/texts.dart';

class UpperPart extends GetView<MedicalHistoryController> {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // gradient: AppColors.mainLinarGradient,
        color: AppColors.primaryColor,
      ),
      width: AppDecoration().screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.back,
                    color: AppColors.secondaryColor,
                    size: AppDecoration().screenWidth * 0.09,
                  ),
                ),
                Text(
                  AppTexts.medicalHistory,
                  style: TextStyle(
                    fontSize: AppDecoration().screenWidth * 0.07,
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppDecoration.cairo,
                    height: 2.2,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                controller.goToAddMedicalHistory();
              },
              icon: Icon(
                CupertinoIcons.cloud_upload,
                color: AppColors.secondaryColor,
                size: AppDecoration().screenWidth * 0.09,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
