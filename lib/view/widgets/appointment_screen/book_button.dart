import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleprac/controller/doctors/appointment_controller.dart';
import 'package:teleprac/core/const/colors.dart';
import 'package:teleprac/core/const/decoration.dart';
import 'package:teleprac/view/widgets/global/custom_button.dart';

class BookButton extends GetView<AppointmentController> {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      function: () {
        controller.bookAppointment();
      },
      text: 'Continue',
      fontSize: 0.05,
      buttonColor: AppColors.primaryColor,
      circularRadius: 10,

    );
    
  }
}


class BookButton2 extends StatelessWidget {
  final VoidCallback? onPressed;

  const BookButton2({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(
            horizontal: AppDecoration().screenWidth * 0.2,
            vertical: AppDecoration().screenHeight * 0.02,
          ),
        ),
        child: Text(
          'Book Appointment',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: AppDecoration().screenWidth * 0.045,
            fontWeight: FontWeight.bold,
            fontFamily: AppDecoration.cairo,
          ),
        ),
      ),
    );
  }
}

