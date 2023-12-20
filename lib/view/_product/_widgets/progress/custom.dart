import 'package:flutter/material.dart';

class CustomLinearPercentIndicator extends StatefulWidget {
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  final double height;
  final double lineHeight;
  final bool animation;
  final Duration animationDuration;
  final Radius barRadius;

  CustomLinearPercentIndicator({
    required this.percent,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.blue,
    this.height = 10.0,
    this.lineHeight = 10.0,
    this.animation = true,
    this.animationDuration = const Duration(milliseconds: 500),
    this.barRadius = const Radius.circular(0),
  });

  @override
  _CustomLinearPercentIndicatorState createState() =>
      _CustomLinearPercentIndicatorState();
}

class _CustomLinearPercentIndicatorState
    extends State<CustomLinearPercentIndicator> {
  late double _animatedPercent;

  @override
  void initState() {
    super.initState();
    _animatedPercent = widget.animation ? 0.0 : widget.percent;

    if (widget.animation) {
      Future.delayed(Duration(milliseconds: 100), () {
        setState(() {
          _animatedPercent = widget.percent;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.lineHeight,
      child: AnimatedContainer(
        duration: widget.animationDuration,
        curve: Curves.easeOut,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(widget.height / 2),
          ),
        ),
        child: FractionallySizedBox(
          widthFactor: _animatedPercent,
          child: Container(
            decoration: BoxDecoration(
              color: widget.progressColor,
              borderRadius: BorderRadius.all(
                Radius.circular(widget.height / 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom Linear Percent Indicator')),
      body: Center(
        child: CustomLinearPercentIndicator(
          percent: 0.7, // Örnek olarak yüzde 70 dolu
          backgroundColor: Colors.grey,
          progressColor: Colors.blue,
          height: 20.0,
          lineHeight: 20.0,
          animation: true,
          animationDuration: Duration(milliseconds: 1000), // Animasyon süresi
          barRadius: Radius.circular(10.0), // Köşe yarıçapı
        ),
      ),
    ),
  ));
}
