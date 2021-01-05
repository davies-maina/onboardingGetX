import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/OnboardingController.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedIndex,
                itemCount: controller.onBoardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            controller.onBoardingPages[index].imageAsset),
                        Text(controller.onBoardingPages[index].title),
                        Text(controller.onBoardingPages[index].description)
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(
                    controller.onBoardingPages.length,
                    (index) => Obx(() {
                          return Container(
                            margin: EdgeInsets.all(4),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                color: controller.selectedIndex.value == index
                                    ? Colors.redAccent
                                    : Colors.grey,
                                shape: BoxShape.circle),
                          );
                        })),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: FlatButton(
                onPressed: controller.forwardDirection,
                child: Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
