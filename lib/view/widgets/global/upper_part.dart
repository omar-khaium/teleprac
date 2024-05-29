import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleprac/controller/main_controller.dart';
import 'package:teleprac/core/const/colors.dart';
import 'package:teleprac/core/const/decoration.dart';

class UpperPart extends GetView<MainController> {
  const UpperPart({
    super.key,
    required this.text,
    this.changeStatusbarColor = false,
    this.statusBarColor = AppColors.lightGrey1,
    this.customBackFunction,
    this.customBarColor = AppColors.greyDesign,
    this.trFunction,
    this.trIcon,
    this.trText,
    this.cartVisible = false,
    this.trIconColor = AppColors.grey,
  });

  final String text;
  final bool changeStatusbarColor;
  final bool cartVisible;
  final Color statusBarColor;
  final Color customBarColor;
  final Function? customBackFunction;
  final Function? trFunction;
  final IconData? trIcon;
  final String? trText;
  final Color? trIconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDecoration().screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: AppDecoration().screenHeight * 0.05,
                width: AppDecoration().screenHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greySplash,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    if (customBackFunction == null) {
                      Get.back();
                    } else {
                      customBackFunction!();
                    }
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: AppDecoration().screenWidth * 0.07,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppDecoration.cairo,
                  height: 2.2,
                ),
              ),
            ),
            // Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color: AppColors.greySplash,
            //       )),
            //   child:  GestureDetector(
            //    onTap: (){
            //
            //    },
            //      child: Padding(
            //        padding: const EdgeInsets.only(left: 280,top: 10),
            //        child: Icon(Icons.add_shopping_cart_outlined,color: Colors.black,),
            //      )),
            // ),
            if (cartVisible)
              GetBuilder<MainController>(builder: (cont) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: [
                      Container(
                        height: AppDecoration().screenHeight * 0.05,
                        width: AppDecoration().screenHeight * 0.05,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greySplash,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            controller.shoppingCart();
                            // Get.put(()=>MyCartController());
                            // Get.to(()=>PharmacyProductsList());
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: const Icon(
                            Icons.shopping_cart,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 16,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: Text(
                            "${controller.cartProducts.length}",
                            style: TextStyle(
                              color: AppColors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppDecoration.cairo,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            if (trIcon != null)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: AppDecoration().screenHeight * 0.05,
                  width: AppDecoration().screenHeight * 0.05,
                  margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greySplash,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      trFunction!();
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Icon(
                      trIcon,
                      color: trIconColor,
                    ),
                  ),
                ),
              ),
            if (trText != null)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: AppDecoration().screenHeight * 0.05,
                  width: AppDecoration().screenHeight * 0.05,
                  margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        trFunction!();
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Text(
                          trText!,
                          style: const TextStyle(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
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

/*
Container(
      decoration: BoxDecoration(
        // gradient: AppColors.mainLinarGradient,
        color: customBarColor,
      ),
      width: AppDecoration().screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  if (customBackFunction == null) {
                    if (changeStatusbarColor) {
                      SystemChrome.setSystemUIOverlayStyle(
                        SystemUiOverlayStyle(
                          statusBarColor: statusBarColor,
                          statusBarIconBrightness: Brightness.light,
                        ),
                      );
                    }
                    Get.back();
                  } else {
                    customBackFunction!();
                  }
                },
                icon: Icon(
                  CupertinoIcons.back,
                  color: AppColors.secondaryColor,
                  size: AppDecoration().screenWidth * 0.1,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: AppDecoration().screenWidth * 0.075,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppDecoration.cairo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
 */
