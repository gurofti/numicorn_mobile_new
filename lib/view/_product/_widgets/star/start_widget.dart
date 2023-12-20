import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Star extends StatefulWidget {
  Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool startStatus = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
      reverseDuration: Duration(milliseconds: 3000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text('');
    return Lottie.asset(
      'asset/image/data.json',
    );
  }
}
