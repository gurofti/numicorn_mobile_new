import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';

class LoadingSpinkPage extends StatefulWidget {
  const LoadingSpinkPage({Key? key}) : super(key: key);

  @override
  _LoadingSpinkPageState createState() => _LoadingSpinkPageState();
}

class _LoadingSpinkPageState extends State<LoadingSpinkPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      size: 20,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? context.appColor : context.appColor,
          ),
        );
      },
    );
  }
}
