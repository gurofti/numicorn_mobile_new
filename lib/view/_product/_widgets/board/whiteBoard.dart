import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/extension/context_extension.dart';
import 'package:numicorn_mobile/view/question/view_model/question_view_model.dart';
import 'package:whiteboard/whiteboard.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';

class WhiteBoardWidget extends StatefulWidget {
  late QuestionViewModel viewModel; // Zorunlu başlangıç rengi
  late Function changeColor;
  late Function closeBoard;
  late Function duster;

  WhiteBoardWidget({
    required this.viewModel,
    required this.changeColor,
    required this.closeBoard,
    required this.duster,
  });

  @override
  _WhiteBoardWidgetState createState() => _WhiteBoardWidgetState();
}

class _WhiteBoardWidgetState extends State<WhiteBoardWidget> {
  Color selectedColor = Colors.red; // Varsayılan başlangıç rengi

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SizedBox(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('click');
                            widget.closeBoard();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                        ),
                        buildColorItem(context, Colors.blue, () {
                          widget.changeColor(Colors.blue);
                        }),
                        buildColorItem(context, Colors.red, () {
                          widget.changeColor(Colors.red);
                        }),
                        buildColorItem(context, Colors.yellow, () {
                          widget.changeColor(Colors.yellow);
                        }),
                        buildColorItem(context, Colors.green, () {
                          widget.changeColor(Colors.green);
                        }),
                        buildColorItem(context, Colors.orange, () {
                          widget.changeColor(Colors.orange);
                        }),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.viewModel.whiteBoardController.undo();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Icon(
                              Icons.undo,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.viewModel.whiteBoardController.redo();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Icon(
                              Icons.redo,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  Widget buildColorItem(BuildContext context, Color color, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        width: context.width * 0.08,
        height: context.width * 0.08,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
