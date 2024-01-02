import 'dart:async';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';

class CountdownTimerWidget extends StatefulWidget {
  final int minutes;
  final Function onTimeComplete;
  final Function onDecrementTime;

  CountdownTimerWidget(
      {Key? key,
      required this.minutes,
      required this.onTimeComplete,
      required this.onDecrementTime})
      : super(key: key);

  @override
  _CountdownTimerWidgetState createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  late Timer _timer;
  late int _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.minutes * 60;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
          widget.onDecrementTime();
        });
      } else {
        _timer.cancel();
        widget.onTimeComplete();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    final String formattedSeconds =
        remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';
    return '$minutes:$formattedSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: context.appColor, // Özel renk uzantısı
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 3.0,
              ),
              child: Icon(Icons.timer_outlined),
            ),
            Text(
              _formatTime(_remainingSeconds), // Zaman formatlama
              style: TextStyle(
                fontSize: 15,
                fontFamily: context.fontFamily500, // Özel font uzantısı
                // color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
