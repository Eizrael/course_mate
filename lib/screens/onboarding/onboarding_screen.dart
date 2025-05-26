import 'package:course_mate/widgets/custom_image.dart';
import 'package:course_mate/widgets/onboarding_custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //top centered dash
              SizedBox(height: 10,),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 4,
                  dotWidth: 15,
                  activeDotColor: Theme.of(context).primaryColor,
                  dotColor: Theme.of(context).primaryColorLight
                ),
              ),
          
              //page view img
              SizedBox(height: 10,),
              SizedBox(
                height: 550,
                child: PageView(
                  controller: pageController,
                  children: [
                    Column(
                      children: [
                        CustomImage(
                          backColor: Color(0xFFFCFAE5),
                          imagePath: 'asset/images/onboarding_img1.png'
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Plan, manage and track tasks', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomImage(
                          backColor: Color(0xFFEBFEEB),
                          imagePath: 'asset/images/onboarding_img2.png'
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Never miss a deadline again', style: Theme.of(context).textTheme.headlineLarge,textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomImage(
                          backColor: Color(0xFFF1F0FE),
                          imagePath: 'asset/images/onboarding_img3.png'
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Organize your semester with ease', style: Theme.of(context).textTheme.headlineLarge,textAlign: TextAlign.center),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          
              //next button
              SizedBox(height: 20,),
              OnboardingCustomBtn(
                onPressed: () {
                  pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.linear);
                  if (pageController.page?.round() == 2) {
                    Navigator.pushNamed(context, '/sign_in_page');
                  }
                },
                textButton: 'Continue'
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  pageController.jumpToPage(2);
                },
                child: Text('Skip', style: Theme.of(context).textTheme.labelMedium,)
              )
          
              //skip buttton
            ],
          ),
        ),
      ),
    );
  }
}


/**
 int _currentPage = 0;

// Inside your PageView:
PageView(
  controller: pageController,
  onPageChanged: (index) {
    setState(() {
      _currentPage = index;
    });
  },
  children: [...],
)

// And in your button:
OnboardingCustomBtn(
  onPressed: () {
    if (_currentPage == 2) {
      Navigator.pushNamed(context, 'sign_in_page');
    } else {
      pageController.nextPage(duration: Duration(milliseconds: 100), curve: Curves.linear);
    }
  },
  textButton: 'Continue'
)

===================================
======================================

onPressed: () {
  if (pageController.page?.round() == 2) {
    Navigator.pushNamed(context, 'sign_in_page');
  } else {
    pageController.nextPage(duration: Duration(milliseconds: 100), curve: Curves.linear);
  }
}
 */