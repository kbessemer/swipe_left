<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Swipe Left is a basic package that allows you to 'swipe left' on a widget, revealing either one or two buttons.


## Features

* Swipe Left on any widget
* Reveals either 1 or 2 buttons beneath the widget, with customizable actions for each button
* All colors and sizes customizable

## Getting started

This package has no pre-requisites.

## Usage

```
SwipeLeft2Buttons(
                height: 75,
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
                  width: 200,
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
            )
```

```
SwipeLeft(
                height: 75,
                buttonTitle: 'Delete',
                buttonBackgroundColor: Colors.red,
                buttonFontColor: Colors.white,
                buttonAction: () {
                  // your action code here
                },
                child: Container(
                    height: 75,
                    width: 200,
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
```