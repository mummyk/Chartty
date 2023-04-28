

import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/lottie_constant.dart';
import '../../../constants/text_strings.dart';
import '../models/on_boarding_model.dart';
import '../screens/welcome_screen.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: signal,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: wizard,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: robot,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: classroom,
        title: tOnBoardingTitle4,
        subTitle: tOnBoardingSubTitle4,
        counterText: tOnBoardingCounter4,
        bgColor: tOnBoardingPage4Color,
      ),
    ),
  ];

  skip() => Get.to(const WelcomeScreen());

  /* skip() => controller.jumpToPage(page: 2);*/
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
