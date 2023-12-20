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

import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../_product/_widgets/button/fancy_button.dart';
import '../../../_product/_widgets/input/fancy_checkbox.dart';
import '../../../_product/_widgets/input/fancy_text_input.dart';
import '../view_model/register_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      viewModel: RegisterViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, RegisterViewModel viewModel) =>
          Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: AuthContainer(
              child: SizedBox(
                height: context.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     top: context.height * 0.06,
                    //     bottom: context.height * 0.04,
                    //   ),
                    //   child: SvgPicture.asset(
                    //     'asset/auth/login.svg',
                    //     fit: BoxFit.cover,
                    //     height: context.width * 0.3,
                    //   ),
                    // ),
                    AuthContainerHeader(
                        header: LocaleKeys.pages_register_header.tr()),
                    AuthContainerSecondTitle(
                        header:
                            "Rakamların Ardındaki Sırları Numicorn ile Keşfet!"),
                    Observer(builder: (_) {
                      return Form(
                        key: viewModel.formState,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: context.height * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: FancyTextInput(
                                      labelText: "Adınız",
                                      hintText: "Adınız",
                                      fieldController: viewModel.nameController,
                                      validation: (value) => value!.isNotEmpty
                                          ? null
                                          : LocaleKeys.form_validation_required
                                              .tr(),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: FancyTextInput(
                                      labelText: "Soyadınız",
                                      hintText: "Soyadınız",
                                      fieldController:
                                          viewModel.surnameController,
                                      validation: (value) => value!.isNotEmpty
                                          ? null
                                          : LocaleKeys.form_validation_required
                                              .tr(),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: FancyTextInput(
                                      labelText:
                                          LocaleKeys.pages_register_email.tr(),
                                      hintText:
                                          LocaleKeys.pages_register_email.tr(),
                                      fieldController:
                                          viewModel.emailController,
                                      validation: (value) => value!
                                              .isValidEmail!
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
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: FancyTextInput(
                                      labelText: LocaleKeys
                                          .pages_register_userName
                                          .tr(),
                                      hintText: LocaleKeys
                                          .pages_register_userName
                                          .tr(),
                                      fieldController:
                                          viewModel.userNameController,
                                      validation: (value) => value!.isNotEmpty
                                          ? (value.length < 6)
                                              ? LocaleKeys.form_validation_min
                                                  .tr(namedArgs: {'min': '6'})
                                              : null
                                          : LocaleKeys.form_validation_required
                                              .tr(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: FancyTextInput(
                                      labelText: LocaleKeys
                                          .pages_register_password
                                          .tr(),
                                      hintText: LocaleKeys
                                          .pages_register_password
                                          .tr(),
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
                                  SizedBox(
                                    width: context.width * 0.9,
                                    child: Column(
                                      children: [
                                        FancyCheckBox(
                                          fieldController: viewModel
                                              .isConfidentialityAgreement,
                                          labelOnClick: () {
                                            print("yorum satırı");
                                            // showMaterialModalBottomSheet(
                                            //   context: context,
                                            //   builder: (context) => Container(
                                            //     padding: EdgeInsets.all(20),
                                            //     alignment: Alignment.center,
                                            //     height: context.height * 0.7,
                                            //     child: Text(
                                            //         'NDA İngilizce non-disclosure agreement kelimelerinin baş harflerinden oluşmuş, Türkçeye kabaca "Gizlilik anlaşması" olarak çevrilebilecek hukuki bir terimdir. Bir gizlilik anlaşması, en az iki taraf arasında akdedilir.'),
                                            //   ),
                                            // );
                                          },
                                          fieldOnChange: () {
                                            viewModel
                                                    .isConfidentialityAgreement =
                                                !viewModel
                                                    .isConfidentialityAgreement;
                                          },
                                          labelText: LocaleKeys
                                              .pages_register_confidentialityAgreement
                                              .tr(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    Padding(
                      padding: EdgeInsets.only(top: context.height * 0.06),
                      child: Column(
                        children: [
                          FancyButton(
                            child: SizedBox(
                              width: context.width * 0.70,
                              child: Center(
                                child: Text(
                                  LocaleKeys.pages_register_formButton.tr(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'PoppinsBold',
                                  ),
                                ),
                              ),
                            ),
                            size: 50,
                            color: context.appColor,
                            onPressed: () => viewModel.register(),
                          ),
                          ButtonAltText(
                            onTap: () => viewModel.loginToPage(),
                            text: LocaleKeys
                                .pages_register_iWantToLoginToCurrentAccount
                                .tr(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
