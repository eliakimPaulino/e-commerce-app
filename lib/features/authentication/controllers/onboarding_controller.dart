import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scrolls
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index as double);
  }

  // update current index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value += 1;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    }
  }

  // update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
