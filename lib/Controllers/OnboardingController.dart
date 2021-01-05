import 'package:flutter/cupertino.dart';
import 'package:onboarding/Models/OnboardingInfo.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();
  forwardDirection() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onBoardingPages = [
    OnboardingInfo('assets/images/order.png', 'Order your food',
        'Straight from your mobile'),
    OnboardingInfo('assets/images/deliver.png', 'Order your food',
        'Straight from your mobile'),
    OnboardingInfo('assets/images/cook.png', 'Order your food',
        'Straight from your mobile')
  ];
}
