// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:teleprac/core/const/colors.dart';
// import 'package:teleprac/core/const/decoration.dart';
// import 'package:teleprac/core/const/texts.dart';
// import 'package:teleprac/view/widgets/global/upper_part.dart';

// class InvoiceScreen extends StatelessWidget {
//   const InvoiceScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Map<String, dynamic> arguments = Get.arguments;

//     return Scaffold(
//       backgroundColor: AppColors.greyDesign,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             UpperPart(
//               text: AppTexts.view,
//               customBackFunction: () {
//                 Get.back();
//               },
//             ),
//             SizedBox(height: AppDecoration().screenHeight * 0.02),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Appointment Summary",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.05,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.primaryColor,
//                         ),
//                       ),
//                       SizedBox(height: AppDecoration().screenHeight * 0.02),
//                       Text(
//                         "Doctor Name: ${arguments['doctorName']}",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.045,
//                           color: AppColors.grey,
//                         ),
//                       ),
//                       SizedBox(height: AppDecoration().screenHeight * 0.01),
//                       Text(
//                         "Date: ${arguments['appointmentDate']}",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.045,
//                           color: AppColors.grey,
//                         ),
//                       ),
//                        Text(
//                         "Time: ${arguments['timeZone']}",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.045,
//                           color: AppColors.grey,
//                         ),
//                       ),
//                       SizedBox(height: AppDecoration().screenHeight * 0.01),
//                       Text(
//                         "Appointment Type: ${arguments['appointmentType']}",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.045,
//                           color: AppColors.grey,
//                         ),
//                       ),
//                       SizedBox(height: AppDecoration().screenHeight * 0.01),
//                       Text(
//                         "Amount: ${arguments['amount']} ${AppTexts.indianRupee}",
//                         style: TextStyle(
//                           fontFamily: AppDecoration.cairo,
//                           fontSize: AppDecoration().screenWidth * 0.045,
//                           color: AppColors.grey,
//                         ),
//                       ),
//                       // Display other necessary details
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleprac/core/const/colors.dart';
import 'package:teleprac/core/const/decoration.dart';
import 'package:teleprac/core/const/texts.dart';
import 'package:teleprac/view/widgets/global/upper_part.dart';
import 'package:teleprac/controller/doctors/appointment_controller.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final AppointmentController controller = Get.arguments as AppointmentController;

    return Scaffold(
      backgroundColor: AppColors.greyDesign,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpperPart(
              text: AppTexts.view,
              customBackFunction: () {
                Get.back();
              },
            ),
            SizedBox(height: AppDecoration().screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appointment Summary",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: AppDecoration().screenHeight * 0.02), 
                      Text(
                        "Doctor Name: ${controller.doctorName}",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.045,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(height: AppDecoration().screenHeight * 0.01),
                      Text(
                        "Date: ${controller.appointmentDate}",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.045,
                          color: AppColors.grey,
                        ),
                      ),
                      Text(
                        "Time: ${controller.indianTimeZone.toString()}",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.045,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(height: AppDecoration().screenHeight * 0.01),
                      Text(
                        "Appointment Type: ${controller.appointmentType}",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.045,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(height: AppDecoration().screenHeight * 0.01),
                      Text(
                        "Amount: ${controller.amount} ${AppTexts.indianRupee}",
                        style: TextStyle(
                          fontFamily: AppDecoration.cairo,
                          fontSize: AppDecoration().screenWidth * 0.045,
                          color: AppColors.grey,
                        ),
                      ),
                      
                      //  Text(
                      //   "Amount: ${controller.doctorImage}",
                      //   style: TextStyle(
                      //     fontFamily: AppDecoration.cairo,
                      //     fontSize: AppDecoration().screenWidth * 0.045,
                      //     color: AppColors.grey,
                      //   ),
                      // ),
                      // Display other necessary details
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
