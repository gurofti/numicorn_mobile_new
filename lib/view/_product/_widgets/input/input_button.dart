import 'package:flutter/material.dart';

class InputButton extends StatefulWidget {
  const InputButton({
    Key? key,
    required this.child,
    required this.size,
    required this.color,
    this.duration = const Duration(milliseconds: 160),
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final Duration duration;
  final VoidCallback onPressed;

  final double size;

  @override
  _InputButtonState createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _pressedAnimation;

  late TickerFuture _downTicker;

  double get buttonDepth => widget.size * 0.2;

  void _setupAnimation() {
    _animationController = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
    );
    _animationController.stop();
    final oldControllerValue = _animationController.value;
    _animationController.dispose();
    _animationController = AnimationController(
      duration: Duration(microseconds: widget.duration.inMicroseconds ~/ 2),
      vsync: this,
      value: oldControllerValue,
    );
    _pressedAnimation = Tween<double>(begin: -buttonDepth, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(InputButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _setupAnimation();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setupAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(_) {
    if (widget.onPressed != null) {
      _downTicker = _animationController.animateTo(1.0);
    }
  }

  void _onTapUp(_) {
    if (widget.onPressed != null) {
      _downTicker.whenComplete(() {
        _animationController.animateTo(0.0);
        widget.onPressed.call();
      });
    }
  }

  void _onTapCancel() {
    if (widget.onPressed != null) {
      _animationController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final vertPadding = 1.0;
    final horzPadding = 2.0;
    final radius = BorderRadius.circular(20.0);

    return Container(
      padding: widget.onPressed != null
          ? EdgeInsets.only(bottom: 0, left: 0.5, right: 0.5)
          : null,
      decoration: BoxDecoration(
        // color: Colors.black87,
        borderRadius: radius,
      ),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: IntrinsicWidth(
          child: IntrinsicHeight(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: _hslRelativeColor(s: -0.25, l: -0.25),
                    borderRadius: radius,
                  ),
                ),
                AnimatedBuilder(
                  animation: _pressedAnimation,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.translate(
                      offset: Offset(0.0, -5),
                      child: child,
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: radius,
                        child: Stack(
                          children: <Widget>[
                            DecoratedBox(
                              decoration: BoxDecoration(
                                // shadow add
                                color: _hslRelativeColor(l: 0.0),
                                borderRadius: radius,
                              ),
                              child: SizedBox.expand(),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, vertPadding * 2),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: _hslRelativeColor(),
                                  borderRadius: radius,
                                ),
                                child: SizedBox.expand(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: vertPadding,
                          horizontal: horzPadding,
                        ),
                        child: widget.child,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _hslRelativeColor({double h = 0.0, s = 0.0, l = 0.0}) {
    final hslColor = HSLColor.fromColor(widget.color);
    h = (hslColor.hue + h).clamp(0.0, 360.0);
    s = (hslColor.saturation + s).clamp(0.0, 1.0);
    l = (hslColor.lightness + l).clamp(0.0, 1.0);
    return HSLColor.fromAHSL(hslColor.alpha, h, s, l).toColor();
  }
}

// USAGE - Fancy Button

// Simple Text - Non Clickable
