import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/font_extension.dart';
import '../view_model/auth_view_model.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthViewModel>(
      viewModel: AuthViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, AuthViewModel viewModel) =>
          Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: buildLoginContainer(context, viewModel),
            ),
            Expanded(
              flex: 5,
              child: buildRegisterContainer(context, viewModel),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLoginContainer(BuildContext context, AuthViewModel viewModel) {
    return Padding(
      padding: EdgeInsets.only(top: context.height * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Zaten bir hesabın var mı?',
                style:
                    TextStyle(fontSize: 24, fontFamily: context.fontFamily400),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Kaldığın yerden devam et.',
                  style: TextStyle(color: context.secondColor, fontSize: 16),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: context.height * 0.06),
            child: FancyButton(
              child: SizedBox(
                width: context.width * 0.6,
                child: Center(
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'PoppinsBold',
                    ),
                  ),
                ),
              ),
              size: 50,
              color: context.appColor,
              onPressed: () => viewModel.loginPage(),
            ),
          )
        ],
      ),
    );
  }

  Container buildRegisterContainer(
      BuildContext context, AuthViewModel viewModel) {
    return Container(
      width: context.width,
      padding: EdgeInsets.only(top: context.height * 0.12),
      decoration: BoxDecoration(
        color: context.appColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Numicorn',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '\'da yeni misin?'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Öğrenmeye hazır mısın?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: context.height * 0.06),
            child: FancyButton(
              child: SizedBox(
                width: context.width * 0.6,
                child: Center(
                  child: Text(
                    'Hesap Oluştur',
                    style: TextStyle(
                      color: context.appColor,
                      fontSize: 18,
                      fontFamily: 'PoppinsBold',
                    ),
                  ),
                ),
              ),
              size: 50,
              color: Colors.white,
              onPressed: () => viewModel.registerPage(),
            ),
          )
        ],
      ),
    );
  }
}
