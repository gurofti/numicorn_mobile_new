import 'dart:ui';

import 'package:flutter/material.dart';

class LinearPercentIndicator extends StatefulWidget {
  final double lineHeight;
  final EdgeInsets padding;
  final bool animation;
  final int animationDuration;
  final Radius barRadius;
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  final Widget? child;

  const LinearPercentIndicator({
    Key? key,
    required this.lineHeight,
    this.padding = EdgeInsets.zero,
    this.animation = false,
    this.animationDuration = 300,
    required this.barRadius,
    required this.percent,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.blue,
    this.child,
  }) : super(key: key);

  @override
  _LinearPercentIndicatorState createState() => _LinearPercentIndicatorState();
}

class _LinearPercentIndicatorState extends State<LinearPercentIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  double? _animatedPercent;

  @override
  void initState() {
    super.initState();
    _animatedPercent = widget.percent;

    if (widget.animation) {
      _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.animationDuration),
      );

      _animationController!.addListener(() {
        setState(() {
          _animatedPercent = lerpDouble(
            _animatedPercent,
            widget.percent,
            _animationController!.value,
          );
        });
      });

      _animationController!.forward();
    }
  }

  @override
  void didUpdateWidget(LinearPercentIndicator oldWidget) {
    if (widget.animation && widget.percent != oldWidget.percent) {
      _animationController!.reset(); // Eski animasyonu sıfırla
      _animationController!.forward(); // Yeni animasyonu başlat
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.lineHeight,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.all(widget.barRadius ?? Radius.circular(0)),
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: _animatedPercent,
            child: Container(
              decoration: BoxDecoration(
                color: widget.progressColor,
                borderRadius:
                    BorderRadius.all(widget.barRadius ?? Radius.circular(0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
