import 'package:flutter/material.dart';
import 'package:numicorn_mobile/view/question/view/actions/question_button.dart';
import 'package:whiteboard/whiteboard.dart';

import '../../../../../core/extension/color_extension.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/extension/font_extension.dart';
import '../../../../_product/_widgets/button/fancy_button.dart';
import '../../../view_model/question_view_model.dart';

class CalculatorQuestion extends StatelessWidget {
  CalculatorQuestion({Key? key, required this.viewModel}) : super(key: key);
  QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.appColorGray,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNumberContainer(
                context,
                viewModel,
                header: '1',
                onPressed: () => viewModel.answerChange('1'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '2',
                onPressed: () => viewModel.answerChange('2'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '3',
                onPressed: () => viewModel.answerChange('3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNumberContainer(
                context,
                viewModel,
                header: '4',
                onPressed: () => viewModel.answerChange('4'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '5',
                onPressed: () => viewModel.answerChange('5'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '6',
                onPressed: () => viewModel.answerChange('6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNumberContainer(
                context,
                viewModel,
                header: '7',
                onPressed: () => viewModel.answerChange('7'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '8',
                onPressed: () => viewModel.answerChange('8'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '9',
                onPressed: () => viewModel.answerChange('9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNumberContainer(
                context,
                viewModel,
                header: '.',
                onPressed: () => viewModel.answerChange('.'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                header: '0',
                onPressed: () => viewModel.answerChange('0'),
              ),
              buildNumberContainer(
                context,
                viewModel,
                headerIcon: Icon(
                  Icons.backspace_rounded,
                ),
                onPressed: () => viewModel.removeAnswerEndLetter(),
              ),
            ],
          ),
          QuestionButton(
            viewModel: viewModel,
          )
        ],
      ),
    );
  }

  Expanded buildNumberContainer(
    BuildContext context,
    QuestionViewModel viewModel, {
    header,
    headerIcon,
    required onPressed,
  }) {
    return Expanded(
      child: Container(
        height: context.height * 0.055,
        margin: EdgeInsets.all(8),
        child: FancyButton(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: header != null
                ? Text(
                    header,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: context.fontFamily500,
                    ),
                  )
                : headerIcon,
          ),
          size: 18,
          radius: 30.0,
          color: Colors.white, // context.appColorLight,
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isCardVisible =
      false; // Duruma bağlı olarak card'ın görünürlüğünü kontrol ediyoruz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Stack(
        children: [
          WhiteBoard(),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isCardVisible = !isCardVisible; // Durumu tersine çevir.
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (isCardVisible)
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black54,
                      ),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card Content'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
