import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //top centered dash
              SizedBox(height: 30,),
              Container(
                width: 65,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(19)
                ),
              ),
          
              //page view img
              SizedBox(height: 50,),
              SizedBox(
                height: 500,
                width: 400,
                child: PageView(
                  children: [
                    Column(
                      children: [
                        Image.asset('asset/onboarding_page1.png', height: 450, width: 300,),
                        Text('Plan, manage and track tasks')
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('asset/onboarding_page2.png', height: 450, width: 300,),
                        Text('Never miss a deadline again')
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('asset/onboarding_page3.png', height: 450, width: 300,),
                        Text('Organize your semester with ease')
                      ],
                    )
                  ],
                ),
              )
          
              //next button
          
              //skip buttton
            ],
          ),
        ),
      ),
    );
  }
}