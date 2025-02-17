import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("showOnboarding", false);

    Navigator.of(context).pushNamedAndRemoveUntil('/', (r) => false);
  }

  // ignore: unused_element
  Widget? _buildImage(String assetName, [double width = 350]) {
    // return Image.asset('assets/$assetName', width: width);
    return null;
  }

  Widget _buildImage1(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      globalHeader: const Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16),
            child: Text(""),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Process Your Life",
          bodyWidget: Column(
            children: [
              const Text(
                "Welcome!\n\nThank you for choosing the Process Your Life. The aim of this app is to allow users to create reuseable processes that you encounter in your daily life. Example include workout list, grocery list, recipe, chores and much more. There are many possibilities of what processes can be added to improve your daily life.",
                style: bodyStyle,
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              _buildImage1('img1.png', 250)
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Create a Process Template",
          bodyWidget: Column(
            children: [
              const Text(
                "Click on 'New Template' to create a new process. Click save icon when done.",
                style: bodyStyle,
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              _buildImage1('img3.png', 225)
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Add Tasks to your Process",
            bodyWidget: Column(
              children: [
                const Text(
                  "Add either a Todo or Counter type by add 'Add New Task'. Click save icon when done.",
                  style: bodyStyle,
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                _buildImage1('img4.png')
              ],
            ),
            decoration: pageDecoration),
        PageViewModel(
          title: "Start the Process",
          bodyWidget: Column(
            children: [
              const Text(
                "Start process and record progress of each task. Counter tasks value can be updated by either pressing '+' or '-'. Todo can be marked done. After all tasks have been completed, then click on check mark button to finish the process.",
                style: bodyStyle,
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              _buildImage1('img5.png')
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "View Completed Processes and Generate PDF Reports",
          bodyWidget: Column(
            children: [
              const Text(
                "View completed instances of your process in the 'Completed' tab and share PDF report",
                style: bodyStyle,
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              _buildImage1('img6.png')
            ],
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.all(12.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
