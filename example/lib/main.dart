import 'package:flutter/material.dart';
import 'package:swipe_left/swipe_left.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe Left Demo',
      home: const MyHomePage(title: 'Swipe Left Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwipeLeft2Buttons(
                height: 75,
                backgroundColor: Colors.white,
                buttonFontSize: 12.0,
                buttonWidth: 75.0,
                button1Title: 'Info',
                button1BackgroundColor: Colors.blue,
                button1FontColor: Colors.white,
                button2Title: 'Delete',
                button2BackgroundColor: Colors.red,
                button2FontColor: Colors.white,
                button1Action: () {
                  // your action code here
                },
                button2Action: () {
                  // your action code here
                },
                child: Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(width: 1, color: Color(0xFFe0e0e0))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.account_balance),
                        Text("My Swipe Left Button"),
                      ],
                    )
                )
            ),
            SwipeLeft(
                height: 75,
                buttonFontSize: 12.0,
                buttonWidth: 75.0,
                backgroundColor: Colors.white,
                buttonTitle: 'Delete',
                buttonBackgroundColor: Colors.red,
                buttonFontColor: Colors.white,
                buttonAction: () {
                  // your action code here
                },
                child: Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(width: 1, color: Color(0xFFe0e0e0))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.account_balance),
                        Text("My Swipe Left Button"),
                      ],
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
