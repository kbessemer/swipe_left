library swipe_left;
import 'package:flutter/material.dart';

class SwipeLeft2Buttons extends StatefulWidget {
  final String button1Title;
  final String button2Title;
  final Color button1BackgroundColor;
  final Color button2BackgroundColor;
  final Color button1FontColor;
  final Color button2FontColor;
  final Color backgroundColor;
  final VoidCallback button1Action;
  final VoidCallback button2Action;
  final double buttonFontSize;
  final double buttonWidth;
  final Widget child;
  final double height;

  SwipeLeft2Buttons({
    required this.button1Title,
    required this.button2Title,
    required this.button1BackgroundColor,
    required this.button2BackgroundColor,
    required this.button1FontColor,
    required this.button2FontColor,
    required this.backgroundColor,
    required this.button1Action,
    required this.button2Action,
    required this.buttonFontSize,
    required this.buttonWidth,
    required this.child,
    required this.height,
  });

  @override
  _SwipeLeft2ButtonsState createState() => _SwipeLeft2ButtonsState();
}

class _SwipeLeft2ButtonsState extends State<SwipeLeft2Buttons>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _isCompleted = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-0.5, 0),
    ).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSwipeStarted(DragStartDetails details) {
    setState(() {
      _isCompleted = false;
    });
  }

  void _onSwipeUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta! / context.size!.width;
  }

  void _onSwipeEnd(DragEndDetails details) {
    if (_controller.value > 0.5) {
      _controller.forward().then((value) {
        setState(() {
          _isCompleted = true;
        });
      });
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: widget.height,
            decoration: BoxDecoration(
                color: widget.backgroundColor,
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFe0e0e0))
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(widget.buttonWidth, widget.height),
                          primary: widget.button1BackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {widget.button1Action();},
                        child: Text(widget.button1Title, style: TextStyle(fontSize: widget.buttonFontSize, color: widget.button1FontColor))
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(widget.buttonWidth, widget.height),
                          primary: widget.button2BackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {widget.button2Action();},
                        child: Text(widget.button2Title, style: TextStyle(fontSize: widget.buttonFontSize, color: widget.button2FontColor))
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onHorizontalDragStart: _onSwipeStarted,
            onHorizontalDragUpdate: _onSwipeUpdate,
            onHorizontalDragEnd: _onSwipeEnd,
            child: SlideTransition(
              position: _slideAnimation,
              child: widget.child,
            ),
          ),
        ]
    );
  }
}

class SwipeLeft extends StatefulWidget {
  final String buttonTitle;
  final Color buttonBackgroundColor;
  final Color buttonFontColor;
  final Color backgroundColor;
  final VoidCallback buttonAction;
  final double buttonFontSize;
  final double buttonWidth;
  final Widget child;
  final double height;

  SwipeLeft({
    required this.buttonTitle,
    required this.buttonBackgroundColor,
    required this.buttonFontColor,
    required this.backgroundColor,
    required this.buttonAction,
    required this.buttonFontSize,
    required this.buttonWidth,
    required this.child,
    required this.height,
  });

  @override
  _SwipeLeftState createState() => _SwipeLeftState();
}

class _SwipeLeftState extends State<SwipeLeft>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _isCompleted = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-0.5, 0),
    ).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSwipeStarted(DragStartDetails details) {
    setState(() {
      _isCompleted = false;
    });
  }

  void _onSwipeUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta! / context.size!.width;
  }

  void _onSwipeEnd(DragEndDetails details) {
    if (_controller.value > 0.5) {
      _controller.forward().then((value) {
        setState(() {
          _isCompleted = true;
        });
      });
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: widget.height,
            decoration: BoxDecoration(
                color: widget.backgroundColor,
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFe0e0e0))
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(widget.buttonWidth, widget.height),
                          primary: widget.buttonBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {widget.buttonAction();},
                        child: Text(widget.buttonTitle, style: TextStyle(fontSize: widget.buttonFontSize, color: widget.buttonFontColor))
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onHorizontalDragStart: _onSwipeStarted,
            onHorizontalDragUpdate: _onSwipeUpdate,
            onHorizontalDragEnd: _onSwipeEnd,
            child: SlideTransition(
              position: _slideAnimation,
              child: widget.child,
            ),
          ),
        ]
    );
  }
}