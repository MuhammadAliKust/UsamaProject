import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/onboarding.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description'),
    OnBoardingModel(
        image: 'assets/images/2.jpg',
        title: 'Second Title',
        description: 'Second Description'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString()),
                      Text(onBoardingList[i].description.toString()),
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Continue")),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
