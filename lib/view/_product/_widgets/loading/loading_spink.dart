import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingSpink extends StatefulWidget {
  const LoadingSpink({Key? key}) : super(key: key);

  @override
  _LoadingSpinkState createState() => _LoadingSpinkState();
}

class _LoadingSpinkState extends State<LoadingSpink>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      size: 20,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.white : Colors.white,
          ),
        );
      },
    );
  }
}
