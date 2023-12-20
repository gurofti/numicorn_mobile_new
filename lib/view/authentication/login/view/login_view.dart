import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/auth_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/header/auth_container_header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/secondTitle/auth_container_second_title.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/text/button_alt_text.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../../../_product/_widgets/input/fancy_text_input.dart';
import '../view_model/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: AuthContainer(
                  child: Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: context.height * 0.07),
                          child: SvgPicture.asset(
                            'asset/auth/login.svg', //'asset/image/rocket_login.png',
                            fit: BoxFit.cover,
                            height: context.width * 0.4,
                          ),
                        ),
                      ),
                      AuthContainerHeader(
                          header: LocaleKeys.pages_login_header.tr()),
                      AuthContainerSecondTitle(
                          header:
                              "Matematikte Büyülü Adımlar, Numicorn'un İzinde!."),
                      Observer(builder: (_) {
                        return Form(
                          key: viewModel.formState,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: context.height * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: FancyTextInput(
                                    labelText: LocaleKeys
                                        .pages_login_emailOrUserName
                                        .tr(),
                                    hintText: LocaleKeys
                                        .pages_login_emailOrUserName
                                        .tr(),
                                    fieldController:
                                        viewModel.emailOrUserNameController,
                                    validation: (value) => value!.isNotEmpty
                                        ? isEmail(value)
                                            ? null
                                            : LocaleKeys.form_validation_email
                                                .tr()
                                        : LocaleKeys.form_validation_required
                                            .tr(),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: FancyTextInput(
                                    labelText:
                                        LocaleKeys.pages_login_password.tr(),
                                    hintText:
                                        LocaleKeys.pages_login_password.tr(),
                                    fieldController:
                                        viewModel.passwordController,
                                    validation: (value) => value!.isNotEmpty
                                        ? (value.length < 6)
                                            ? LocaleKeys.form_validation_min
                                                .tr(namedArgs: {'min': '6'})
                                            : null
                                        : LocaleKeys.form_validation_required
                                            .tr(),
                                    obscureText: viewModel.isLockOpen,
                                    suffixIcon: GestureDetector(
                                      onTap: () => viewModel.isLockOpen =
                                          !viewModel.isLockOpen,
                                      child: Observer(builder: (_) {
                                        return Icon(
                                          viewModel.isLockOpen
                                              ? Icons.remove_red_eye_rounded
                                              : Icons.remove_red_eye_outlined,
                                          color: context.appColor,
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => viewModel.forgotToPage(),
                                  child: Text(
                                    LocaleKeys.pages_login_forgotPassword.tr(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                      Padding(
                        padding: EdgeInsets.only(top: context.height * 0.06),
                        child: Column(
                          children: [
                            FancyButton(
                              child: SizedBox(
                                width: context.width * 0.45,
                                child: Center(
                                  child: !viewModel.isLoading
                                      ? Text(
                                          LocaleKeys.pages_login_form_button
                                              .tr(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'PoppinsBold',
                                          ),
                                        )
                                      : const LoadingSpink(),
                                ),
                              ),
                              size: 50,
                              color: context.appColor,
                              onPressed: () {
                                viewModel.login();
                              },
                            ),
                            ButtonAltText(
                              onTap: () => viewModel.registerToPage(),
                              text:
                                  LocaleKeys.pages_login_iWantToNewAccount.tr(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
