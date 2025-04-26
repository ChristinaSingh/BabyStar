import 'package:babystar/app/modules/splashScreen/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../data/constants/image_constants.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      controller.count.value;
      return Scaffold(
        backgroundColor: primary3Color,
        body: Center(
            child: CommonWidgets.appIcons(
          assetName: ImageConstants.imgLogo,
          height: ResponsiveSize.height(context, 100),
          width: ResponsiveSize.width(context, 250),
        )),
      );
    }));
  }
}
