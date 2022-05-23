import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  PageController _pageBoardController = PageController(initialPage: 0);
  int currentPage = 0;

  List pages = [
    IntroTab(
      image: 'assets/image_intro1.png',
      title: 'Manage your tasks',
      subTitle:
          'You can easily manage all of your daily tasks in DoMe for free',
    ),
    IntroTab(
      image: 'assets/image_intro2.png',
      title: 'Create daily routine',
      subTitle:
          'In Uptodo  you can create your personalized routine to stay productive',
    ),
    IntroTab(
      image: 'assets/image_intro3.png',
      title: 'Orgonaize your tasks',
      subTitle:
          'You can organize your daily tasks by adding your tasks into separate categories',
    ),
  ];
  
  
  void nextPage() {
    _pageBoardController.nextPage(
      duration: Duration(microseconds: 500),
      curve: Curves.linear,
    );
  }

  void previousPage() {
    _pageBoardController.previousPage(
      duration: Duration(microseconds: 500),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomAppBar(),
      body: Stack(
        children: [
          PageView(
            controller: _pageBoardController,
            onPageChanged: (value) {
              currentPage = value;
              setState(() {});
            },
            pageSnapping: true,
            children: [
              for (var i = 0; i < pages.length; i++) pages[i],
            ],
          ),
          _buildPageIndexIndicator(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff121212),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: TextButton(
        onPressed: () {},
        child: Text(
          'SKIP',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.white.withOpacity(0.4),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      color: Color(0xff121212),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 24, 24, 24),
        child: Row(
          children: [
            _buildButton(
              width: 90,
              text: 'BACK',
              borderColor: Colors.transparent,
              buttonColor: Colors.transparent,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white.withOpacity(0.4),
              ),
              onPressed: () {
                previousPage();
              },
            ),
            Spacer(),
            _buildButton(
              width: currentPage == pages.length - 1 ? 140 : 90,
              text: currentPage == pages.length - 1 ? 'GET STARTED' : 'NEXT',
              onPressed: () {
                nextPage();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      {double width = 90.0,
      buttonColor,
      borderColor,
      text,
      style,
      Function? onPressed}) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: buttonColor ?? Color(0xff8687E7),
        border: Border.all(
          color: borderColor ?? Color(0xff8687E7),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: () {
          onPressed!();
        },
        child: Text(
          text,
          style: style ??
              TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
        ),
      ),
    );
  }

  Widget _buildPageIndexIndicator() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < pages.length; i++)
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: currentPage == i ? 20.0 : 8.0,
              height: 4.0,
              margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: currentPage == i
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
              ),
            ),
        ],
      ),
    );
  }
}

class IntroTab extends StatefulWidget {
  const IntroTab({
    Key? key,
    this.title = 'Title',
    this.subTitle = 'Subtitle',
    this.image = 'assets/image_intro1.png',
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String image;

  @override
  State<IntroTab> createState() => _IntroTabState();
}

class _IntroTabState extends State<IntroTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                widget.image,
                width: 270,
                height: 300,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 38, 24, 40),
              child: Text(
                widget.subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}