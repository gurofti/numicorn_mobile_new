import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/auth_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/container/header/auth_container_header.dart';
import 'package:numicorn_mobile/view/_product/_widgets/authentication/text/button_alt_text.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../../../_product/_widgets/input/fancy_text_input.dart';
import '../view_model/forgot_view_model.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ForgotViewModel>(
      viewModel: ForgotViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, ForgotViewModel viewModel) =>
          Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.height,
                child: AuthContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: SafeArea(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: context.height * 0.07),
                                child: SvgPicture.asset(
                                  'asset/auth/forgot.svg', //'asset/image/rocket_login.png',
                                  fit: BoxFit.cover,
                                  height: context.width * 0.4,
                                ),
                              ),
                            ),
                          ),
                          AuthContainerHeader(
                              header: LocaleKeys.pages_forgot_header.tr()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Size özel bir şifre sıfırlama kodu oluşturulacaktır.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Observer(builder: (_) {
                          return Form(
                            key: viewModel.formState,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: context.height * 0.03),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: FancyTextInput(
                                          labelText: LocaleKeys
                                              .pages_forgot_email
                                              .tr(),
                                          hintText: LocaleKeys
                                              .pages_forgot_email
                                              .tr(),
                                          fieldController:
                                              viewModel.emailController,
                                          validation: (value) => value!
                                                  .isNotEmpty
                                              ? isEmail(value)
                                                  ? null
                                                  : LocaleKeys
                                                      .form_validation_email
                                                      .tr()
                                              : LocaleKeys
                                                  .form_validation_required
                                                  .tr(),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: context.height * 0.06),
                        child: Column(
                          children: [
                            FancyButton(
                              child: SizedBox(
                                width: context.width * 0.70,
                                child: Observer(builder: (_) {
                                  return Center(
                                    child: viewModel.loading
                                        ? LoadingSpink()
                                        : Text(
                                            LocaleKeys.pages_forgot_formButton
                                                .tr(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'PoppinsBold',
                                            ),
                                          ),
                                  );
                                }),
                              ),
                              size: 50,
                              color: context.appColor,
                              onPressed: () async {
                                await viewModel.forgotCreateCode();
                              },
                            ),
                            ButtonAltText(
                              onTap: () => viewModel.loginToPage(),
                              text: LocaleKeys.pages_forgot_rememberedMyPassword
                                  .tr(),
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
