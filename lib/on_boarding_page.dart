import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myprocess/main.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainApp()),
    );
  }

  // ignore: unused_element
  Widget? _buildImage(String assetName, [double width = 350]) {
    // return Image.asset('assets/$assetName', width: width);
    return null;
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
          title: "Process Your Life:\nA Task App",
          body: "Create processes to simplify your life.",
          image: _buildImage('img1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "What is a process?",
          body:
              "Process is a collection of tasks needed to accomplish an objective. Tasks can include a simple todo or a counter values that need to be recorded",
          image: _buildImage('img2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "What makes this app different?",
          body:
              "The focus of this app is to help you create reusable processes that can be tracked over time. For example this app can be used to track a process like baking bread. Using the app will allow you to keep track of what tasks are needed to bake the bread and record how long each bake took so you can tweak your process next time.",
          image: _buildImage('img2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Create a Process Template",
          body:
              "Click on 'New Template' to create a new process. Click save icon when done.",
          image: _buildImage('img3.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Add Tasks to your Process",
            body:
                "Add either a Todo or Counter type by add 'Add New Task'. Click save icon when done.",
            decoration: pageDecoration),
        PageViewModel(
            title: "Start the Process",
            body:
                "Press the green play putton to start an instance of a process.",
            image: _buildImage('img2.jpg'),
            decoration: pageDecoration),
        PageViewModel(
          title: "Complete the Tasks and Process",
          body:
              "Record progress of each task. Counter tasks value can be updated by either pressing '+' or '-'. Todo can be marked done. After all tasks have been completed, then click on check mark button to finish the process.",
          decoration: pageDecoration,
          image: _buildImage('img1.jpg'),
        ),
        PageViewModel(
          title: "View Historical Tasks and Generate PDF Reports",
          body:
              "View completed instances of your process in the 'Completed' tab and share PDF report",
          decoration: pageDecoration,
          image: _buildImage('img1.jpg'),
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
