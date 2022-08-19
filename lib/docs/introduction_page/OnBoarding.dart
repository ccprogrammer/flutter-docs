import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List onboardingPage = [
    {
      'image_url': 'assets/images/image_onboarding1.png',
      'title': 'Buy Furniture Easily',
      'subtitle':
          'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
    },
    {
      'image_url': 'assets/images/image_onboarding2.png',
      'title': 'Fast Delivery',
      'subtitle':
          'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
    },
    {
      'image_url': 'assets/images/image_onboarding3.png',
      'title': 'Best Price',
      'subtitle':
          'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
    },
  ];
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildOnboardingItem(),
          _buildButtonNav(),
        ],
      ),
    );
  }

  Widget _buildOnboardingItem() {
    return Expanded(
      child: CarouselSlider(
        items: onboardingPage
            .map(
              (e) => Column(
                children: [
                  SizedBox(height: 99),
                  Image.asset(
                    '${e['image_url']}',
                    width: double.infinity,
                  ),
                  SizedBox(height: 100),
                  Text(
                    '${e['title']}',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${e['subtitle']}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
            .toList(),
        options: CarouselOptions(
            height: double.infinity,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            initialPage: currentIndex,
            onPageChanged: (index, _) {
              setState(() {
                currentIndex = index;
              });
            }),
        carouselController: controller,
      ),
    );
  }

  Widget _buildButtonNav() {
    return Container(
      margin: EdgeInsets.only(
        left: 40,
        right: 40,
        bottom: 29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              controller.animateToPage(onboardingPage.length - 1);
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              for (var i = 0; i < 3; i++)
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == i ? Colors.black : Colors.grey.withOpacity(0.4),
                  ),
                ),
            ],
          ),
          TextButton(
            onPressed: () {
              if (currentIndex == onboardingPage.length - 1) {
                // Navigator.pushNamed(context, AppRoute.signIn);
              } else {
                controller.nextPage();
              }
            },
            child: Text(
              'NEXT',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
