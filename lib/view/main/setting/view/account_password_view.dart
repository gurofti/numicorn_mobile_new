import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:numicorn_mobile/core/extension/string_extension.dart';
import 'package:numicorn_mobile/core/global/validation/isEmail.dart';
import 'package:numicorn_mobile/core/init/lang/locale_keys.g.dart';
import 'package:numicorn_mobile/view/_product/_widgets/button/fancy_button.dart';
import 'package:numicorn_mobile/view/_product/_widgets/container/app/app_container.dart';
import 'package:numicorn_mobile/view/_product/_widgets/input/fancy_text_input.dart';
import 'package:numicorn_mobile/view/_product/_widgets/loading/loading_spink.dart';
import 'package:numicorn_mobile/view/main/setting/view/setting_view.dart';
import 'package:numicorn_mobile/view/main/setting/view_model/account_password_view_model.dart';
import '../../../../core/extension/color_extension.dart';
import '../../../../core/extension/context_extension.dart';

class AccountPasswordView extends StatelessWidget {
  const AccountPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<AccountPasswordViewModel>(
      viewModel: AccountPasswordViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder:
          (BuildContext context, AccountPasswordViewModel viewModel) =>
              AppContainer(
        header: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: context.width,
          height: 50,
          child: SettingView().buildHeader(context, "Şifre Değiştir"),
        ),
        body: Observer(builder: (_) {
          return Container(
            color: Colors.white,
            child: buildContent(context, viewModel),
          );
        }),
      ),
    );
  }

  Widget buildContent(
      BuildContext context, AccountPasswordViewModel viewModel) {
    return Form(
      key: viewModel.formState,
      child: Container(
        width: context.width,
        height: context.height,
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            FancyTextInput(
              labelText: "Mevcut Şifreniz",
              hintText: "Mevcut Şifreniz",
              fieldController: viewModel.oldPasswordController,
              validation: (value) => value!.isNotEmpty
                  ? (value.length < 6)
                      ? LocaleKeys.form_validation_min
                          .tr(namedArgs: {'min': '6'})
                      : null
                  : LocaleKeys.form_validation_required.tr(),
              obscureText: viewModel.isLockOpen,
              suffixIcon: GestureDetector(
                onTap: () => viewModel.isLockOpen = !viewModel.isLockOpen,
                child: Icon(
                  viewModel.isLockOpen
                      ? Icons.remove_red_eye_rounded
                      : Icons.remove_red_eye_outlined,
                  color: context.appColor,
                ),
              ),
            ),
            FancyTextInput(
              labelText: "Yeni Şifreniz",
              hintText: "Yeni Şifreniz",
              fieldController: viewModel.passwordController,
              validation: (value) => value!.isNotEmpty
                  ? (value.length < 6)
                      ? LocaleKeys.form_validation_min
                          .tr(namedArgs: {'min': '6'})
                      : null
                  : LocaleKeys.form_validation_required.tr(),
              obscureText: viewModel.isLockOpen,
              suffixIcon: GestureDetector(
                onTap: () => viewModel.isLockOpen = !viewModel.isLockOpen,
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
            FancyTextInput(
              labelText: "Yeni Şifre Tekrar",
              hintText: "Yeni Şifre Tekrar",
              fieldController: viewModel.confirmPasswordController,
              validation: (value) => value!.isNotEmpty
                  ? (value.length < 6)
                      ? LocaleKeys.form_validation_min
                          .tr(namedArgs: {'min': '6'})
                      : viewModel.passwordController.text ==
                              viewModel.confirmPasswordController.text
                          ? null
                          : LocaleKeys.form_validation_notMatchPassword.tr()
                  : LocaleKeys.form_validation_required.tr(),
              obscureText: viewModel.isLockOpen,
              suffixIcon: GestureDetector(
                onTap: () => viewModel.isLockOpen = !viewModel.isLockOpen,
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
            Container(
              padding: const EdgeInsets.all(38.0),
              child: FancyButton(
                child: SizedBox(
                  width: context.width * 0.45,
                  child: Center(
                    child: !viewModel.formLoading
                        ? Text(
                            "Kaydet",
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
                  viewModel.accountPasswordUpdate();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
